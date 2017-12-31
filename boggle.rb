file  = File.open("cubes.txt")
lines = file.readlines.map{|x| x.chomp}
cubes = lines.map{|x| x.scan(/Qu|[A-Z]/)}

def shuffleboard(cubes)
  cubes = cubes.shuffle
  print "+--------------+\n"
  4.times do
    print "|  "
    4.times do
      letter = cubes.pop.sample
      if letter == "Qu" then
        print letter, " " 
      else 
        print letter, "  "
      end 
    end
    print "|\n"
  end
  print "+--------------+\n"
end

def playgame(cubes, duration=180)
  shuffleboard cubes
  sleep duration
  puts "game over, bitches!"
end

playgame(cubes) if __FILE__ == $0
