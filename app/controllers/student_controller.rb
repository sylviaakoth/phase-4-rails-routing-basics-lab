class StudentController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        highest_grade = Student.all.order(grade: :desc).limit(1)
        
    end
end