
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct asus_drvdata {int battery_stat; int battery_capacity; TYPE_1__* hdev; scalar_t__ battery_next_query; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;





 int POWER_SUPPLY_SCOPE_DEVICE ;
 scalar_t__ QUERY_MIN_INTERVAL ;
 int asus_battery_query (struct asus_drvdata*) ;
 scalar_t__ jiffies ;
 struct asus_drvdata* power_supply_get_drvdata (struct power_supply*) ;
 int time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int asus_battery_get_property(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct asus_drvdata *drvdata = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 128:
 case 132:
  if (time_before(drvdata->battery_next_query, jiffies)) {
   drvdata->battery_next_query =
      jiffies + QUERY_MIN_INTERVAL;
   ret = asus_battery_query(drvdata);
   if (ret)
    return ret;
  }
  if (psp == 128)
   val->intval = drvdata->battery_stat;
  else
   val->intval = drvdata->battery_capacity;
  break;
 case 130:
  val->intval = 1;
  break;
 case 129:
  val->intval = POWER_SUPPLY_SCOPE_DEVICE;
  break;
 case 131:
  val->strval = drvdata->hdev->name;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
