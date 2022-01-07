
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union power_supply_propval {char* strval; int intval; } ;
struct power_supply {int dummy; } ;
struct TYPE_3__ {int online; int level; int capacity; int status; } ;
struct hidpp_device {char* name; TYPE_2__* hid_dev; TYPE_1__ battery; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_4__ {char* uniq; } ;


 int EINVAL ;
 int POWER_SUPPLY_SCOPE_DEVICE ;
 struct hidpp_device* power_supply_get_drvdata (struct power_supply*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int hidpp_battery_get_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct hidpp_device *hidpp = power_supply_get_drvdata(psy);
 int ret = 0;

 switch(psp) {
  case 128:
   val->intval = hidpp->battery.status;
   break;
  case 135:
   val->intval = hidpp->battery.capacity;
   break;
  case 134:
   val->intval = hidpp->battery.level;
   break;
  case 130:
   val->intval = POWER_SUPPLY_SCOPE_DEVICE;
   break;
  case 131:
   val->intval = hidpp->battery.online;
   break;
  case 132:
   if (!strncmp(hidpp->name, "Logitech ", 9))
    val->strval = hidpp->name + 9;
   else
    val->strval = hidpp->name;
   break;
  case 133:
   val->strval = "Logitech";
   break;
  case 129:
   val->strval = hidpp->hid_dev->uniq;
   break;
  default:
   ret = -EINVAL;
   break;
 }

 return ret;
}
