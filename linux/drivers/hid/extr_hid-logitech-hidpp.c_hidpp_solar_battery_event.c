
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int funcindex_clientid; scalar_t__ feature_index; int* params; } ;
struct hidpp_report {TYPE_1__ fap; } ;
struct TYPE_4__ {scalar_t__ solar_feature_index; int capacity; int online; int status; scalar_t__ ps; } ;
struct hidpp_device {TYPE_2__ battery; } ;


 int EVENT_SOLAR_BATTERY_BROADCAST ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int power_supply_changed (scalar_t__) ;

__attribute__((used)) static int hidpp_solar_battery_event(struct hidpp_device *hidpp,
         u8 *data, int size)
{
 struct hidpp_report *report = (struct hidpp_report *)data;
 int capacity, lux, status;
 u8 function;

 function = report->fap.funcindex_clientid;


 if (report->fap.feature_index != hidpp->battery.solar_feature_index ||
     !(function == EVENT_SOLAR_BATTERY_BROADCAST ||
       function == 129 ||
       function == 128))
  return 0;

 capacity = report->fap.params[0];

 switch (function) {
 case 129:
  lux = (report->fap.params[1] << 8) | report->fap.params[2];
  if (lux > 200)
   status = POWER_SUPPLY_STATUS_CHARGING;
  else
   status = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 128:
 default:
  if (capacity < hidpp->battery.capacity)
   status = POWER_SUPPLY_STATUS_DISCHARGING;
  else
   status = POWER_SUPPLY_STATUS_CHARGING;

 }

 if (capacity == 100)
  status = POWER_SUPPLY_STATUS_FULL;

 hidpp->battery.online = 1;
 if (capacity != hidpp->battery.capacity ||
     status != hidpp->battery.status) {
  hidpp->battery.capacity = capacity;
  hidpp->battery.status = status;
  if (hidpp->battery.ps)
   power_supply_changed(hidpp->battery.ps);
 }

 return 0;
}
