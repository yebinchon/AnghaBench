
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;

__attribute__((used)) static int hidpp10_battery_status_map_status(u8 param)
{
 int status;

 switch (param) {
 case 0x00:

  status = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 0x21:
 case 0x24:
 case 0x25:
  status = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 0x26:
 case 0x22:
  status = POWER_SUPPLY_STATUS_FULL;
  break;
 case 0x20:
  status = POWER_SUPPLY_STATUS_UNKNOWN;
  break;





 default:
  status = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 }

 return status;
}
