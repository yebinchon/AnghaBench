
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct asus_drvdata {int battery_capacity; int battery_stat; } ;


 scalar_t__ BATTERY_LEVEL_MAX ;



 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;

__attribute__((used)) static int asus_parse_battery(struct asus_drvdata *drvdata, u8 *data, int size)
{
 u8 sts;
 u8 lvl;
 int val;

 lvl = data[1];
 sts = data[8];

 drvdata->battery_capacity = ((int)lvl * 100) / (int)BATTERY_LEVEL_MAX;

 switch (sts) {
 case 130:
  val = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 128:
  val = POWER_SUPPLY_STATUS_FULL;
  break;
 case 129:
 default:
  val = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 }
 drvdata->battery_stat = val;

 return 0;
}
