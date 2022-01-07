
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ feature_index; scalar_t__ funcindex_clientid; int params; } ;
struct hidpp_report {TYPE_1__ fap; } ;
struct TYPE_4__ {scalar_t__ feature_index; int online; int capacity; int level; int status; scalar_t__ ps; } ;
struct hidpp_device {TYPE_2__ battery; } ;


 scalar_t__ EVENT_BATTERY_LEVEL_STATUS_BROADCAST ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int hidpp20_batterylevel_map_status_capacity (int ,int*,int*,int*) ;
 int power_supply_changed (scalar_t__) ;

__attribute__((used)) static int hidpp20_battery_event(struct hidpp_device *hidpp,
     u8 *data, int size)
{
 struct hidpp_report *report = (struct hidpp_report *)data;
 int status, capacity, next_capacity, level;
 bool changed;

 if (report->fap.feature_index != hidpp->battery.feature_index ||
     report->fap.funcindex_clientid != EVENT_BATTERY_LEVEL_STATUS_BROADCAST)
  return 0;

 status = hidpp20_batterylevel_map_status_capacity(report->fap.params,
         &capacity,
         &next_capacity,
         &level);


 hidpp->battery.online = status == POWER_SUPPLY_STATUS_DISCHARGING ||
    status == POWER_SUPPLY_STATUS_FULL;

 changed = capacity != hidpp->battery.capacity ||
    level != hidpp->battery.level ||
    status != hidpp->battery.status;

 if (changed) {
  hidpp->battery.level = level;
  hidpp->battery.capacity = capacity;
  hidpp->battery.status = status;
  if (hidpp->battery.ps)
   power_supply_changed(hidpp->battery.ps);
 }

 return 0;
}
