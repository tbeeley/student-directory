def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name].capitalize}, likes #{student[:hobby]} from (#{student[:cohort].capitalize} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	puts "What's your hobby"
	hobby = gets.chomp
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :June, :hobby => hobby}
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Name?"
		name = gets.chomp
		puts "Hobby?"
		hobby = gets.chomp
	end
	# return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)
