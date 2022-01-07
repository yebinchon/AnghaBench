
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {int intval; int strval; } ;
struct wacom_battery {int bat_connected; int battery_capacity; int bat_status; int ps_connected; int bat_charging; TYPE_2__* wacom; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ wacom_wac; } ;


 int EINVAL ;





 int POWER_SUPPLY_SCOPE_DEVICE ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int WACOM_POWER_SUPPLY_STATUS_AUTO ;
 struct wacom_battery* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int wacom_battery_get_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct wacom_battery *battery = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
  case 131:
   val->strval = battery->wacom->wacom_wac.name;
   break;
  case 130:
   val->intval = battery->bat_connected;
   break;
  case 129:
   val->intval = POWER_SUPPLY_SCOPE_DEVICE;
   break;
  case 132:
   val->intval = battery->battery_capacity;
   break;
  case 128:
   if (battery->bat_status != WACOM_POWER_SUPPLY_STATUS_AUTO)
    val->intval = battery->bat_status;
   else if (battery->bat_charging)
    val->intval = POWER_SUPPLY_STATUS_CHARGING;
   else if (battery->battery_capacity == 100 &&
        battery->ps_connected)
    val->intval = POWER_SUPPLY_STATUS_FULL;
   else if (battery->ps_connected)
    val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
   else
    val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
   break;
  default:
   ret = -EINVAL;
   break;
 }

 return ret;
}
