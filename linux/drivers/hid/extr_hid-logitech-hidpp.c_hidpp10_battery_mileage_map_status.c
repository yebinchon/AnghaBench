
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;

__attribute__((used)) static int hidpp10_battery_mileage_map_status(u8 param)
{
 int status;

 switch (param >> 6) {
 case 0x00:

  status = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 0x01:
  status = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 0x02:
  status = POWER_SUPPLY_STATUS_FULL;
  break;



 default:
  status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 }

 return status;
}
