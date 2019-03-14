class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]

  def index
    @students = Student.all
  end

  def activate
    # byebug
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
    @student.save
    # @student = set_student
    redirect_to @student
  end

  # def update
  #   @student = set_student
  #   @student.update(params[:student])
  #   redirect_to @student
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
