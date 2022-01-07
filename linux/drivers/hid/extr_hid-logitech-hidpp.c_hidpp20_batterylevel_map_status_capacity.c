
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int hidpp_map_battery_level (int) ;

__attribute__((used)) static int hidpp20_batterylevel_map_status_capacity(u8 data[3], int *capacity,
          int *next_capacity,
          int *level)
{
 int status;

 *capacity = data[0];
 *next_capacity = data[1];
 *level = POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;




 switch (data[2]) {
  case 0:
   status = POWER_SUPPLY_STATUS_DISCHARGING;
   *level = hidpp_map_battery_level(*capacity);
   break;
  case 1:
   status = POWER_SUPPLY_STATUS_CHARGING;
   break;
  case 2:
   status = POWER_SUPPLY_STATUS_CHARGING;
   break;
  case 3:
   status = POWER_SUPPLY_STATUS_FULL;
   *level = POWER_SUPPLY_CAPACITY_LEVEL_FULL;
   *capacity = 100;
   break;
  case 4:
   status = POWER_SUPPLY_STATUS_CHARGING;
   break;



  default:
   status = POWER_SUPPLY_STATUS_NOT_CHARGING;
   break;
 }

 return status;
}
