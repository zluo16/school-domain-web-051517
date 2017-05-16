class School

  def add_student(name, grade)

    if @rost.keys.include?(grade)
      @rost[grade] << name
    else
      @rost[grade] = Array.new.push(name)
    end
  end

  def roster
    @rost
  end

  def initialize(name)
    @name = name
    @rost = {}
    roster
  end

  def name
    @name
  end

  def grade(num)
    @rost[num]
  end

  def sort
    new_hash = {}

    @rost.each do |grade, array|
      new_hash[grade] = array.sort
    end
    new_hash
  end

end
