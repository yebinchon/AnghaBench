
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;

__attribute__((used)) static int hidpp_map_battery_level(int capacity)
{
 if (capacity < 11)
  return POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;




 else if (capacity < 30)
  return POWER_SUPPLY_CAPACITY_LEVEL_LOW;
 else if (capacity < 81)
  return POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
 return POWER_SUPPLY_CAPACITY_LEVEL_FULL;
}
