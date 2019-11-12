require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, new_hash|
    if season == :winter
      new_hash.each do |holiday, data|
      data << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, new_hash|
    if season == :spring
      new_hash.each do |holiday, data|
      data << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,stuff|
    puts "#{season.capitalize}:"
    stuff.each do |holiday, data|
      puts "  #{holiday.to_s.split("_").map(&:capitalize).join(' ')}: #{data.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season,stuff|
    stuff.each do |holiday,supply|
      if supply.include?("BBQ") == true
        new_array << holiday
      else
      end
    end
  end
  new_array
end







