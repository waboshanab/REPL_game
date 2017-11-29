class Memory_Game
  def initialize
    @memory_game_values
  end

    #Memory Game Intro
  def game_intro_text
    <<~EOF
    Welcome to the Memory Game.  The rules are easy! You must remember the words displayed in order to win! 

    Start Game?🎲
    
    Options: Y, N
    EOF
 

  end

  #Start Memory Game Text
  def start_game_text(startgame)
    puts "\n"

    if startgame == "Y"

      puts "Great! Let's play! The first word will appear in three seconds!"
      "\n"
      "\n"
      "\n"
      "\n"
      "\n"
      
      
    else 
      puts "OK, come back ready you're ready to play!"
      exit
    end

  end

  #Store Memory Game Word Bank
  def memory_game_word_bank
    word_bank = ["Dog",
                 "Leaf",
                 "Eagle",
                 "Mouse",
                 "Cow",
                 "Blue",
                 "Couch",
                 "Green",
                 "Dream",
                 "Tile",
                 "Walk",
                 "Heist",
                 "Fort",
                 "Beef",
                 "Skip",
                 "Jump",
                 "Truck",
                 "Ball",
                 "Pot"
                ]

    @memory_game_values = word_bank.sample(4)

    # puts memory_game_values


  end

  #Display the words to memorize
  def display_words

    sleep 3

    puts @memory_game_values[0]

    sleep 2

    system('clear')

    puts @memory_game_values[1]

    sleep 2

    system('clear')

    puts @memory_game_values[2]

    sleep 2

    system('clear')

    puts @memory_game_values[3]

    sleep 2

    system('clear')

  end

  def did_user_memorize_text
    <<~EOF
    Okay! That was easy to memorize right?  Now repeat the words back in the same order to win!!


    What was the first word you needed to memorize?
    EOF

  end

  def restart_question
    <<~EOF
    
    Would you like to play again?
    Options: yes, no
    EOF
  end

  def restart_game?(input)
    if input == "yes"
      true
    else
      false
    end
  end


  def play_memory_game

    puts "\n"
    puts game_intro_text

    startgame = gets.chomp.upcase

    puts start_game_text(startgame)

    memory_game_word_bank

    puts display_words

    puts did_user_memorize_text


    if(first_word == @memory_game_values[0])
      puts "Correct!! Now what was the next?"
    else
      puts "Wrong!! The first word was #{@memory_game_values[0]}"

      puts restart_question
      restart_input = gets.chomp

      if restart_game?(restart_input)
        play_memory_game 
      else
        puts "\nThank you for playing. Bye!"
        exit
      end

    end

    second_word = gets.chomp.capitalize

    if(second_word == @memory_game_values[1])
      puts "Correct!! Now what was the next?"
    else
      puts "Wrong!! The second word was #{@memory_game_values[1]}"

      puts restart_question
      restart_input = gets.chomp

      if restart_game?(restart_input)
        play_memory_game 
      else
        puts "\nThank you for playing. Bye!"
        exit
      end
    end

    third_word = gets.chomp.capitalize

    if(third_word == @memory_game_values[2])
      puts "Correct!! Now what was the next?"
    else
      puts "Wrong!! The third word was #{@memory_game_values[2]}"

      puts restart_question
      restart_input = gets.chomp

      if restart_game?(restart_input)
        play_memory_game 
      else
        puts "\nThank you for playing. Bye!"
        exit
      end
    end

    fourth_word = gets.chomp.capitalize

    if(fourth_word == @memory_game_values[3])
      puts "Correct!! YOU WIN!!! You have great memory! Here's your trophy 🏆"
    else
      puts "So close but wrong!! The fourth word was #{@memory_game_values[3]}"

      puts restart_question
      restart_input = gets.chomp

      if restart_game?(restart_input)
        play_memory_game 
      else
        puts "\nThank you for playing. Bye!"
        exit
      end
    end


    puts restart_question
    restart_input = gets.chomp

    if restart_game?(restart_input)
      play_memory_game 
    else
      puts "\nThank you for playing. Bye!"
    end


  end


  


end
