
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int sub_id; int* params; } ;
struct hidpp_report {scalar_t__ report_id; int * rawbytes; TYPE_1__ rap; } ;
struct TYPE_4__ {int capacity; int level; int status; int online; scalar_t__ ps; } ;
struct hidpp_device {TYPE_2__ battery; } ;




 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 scalar_t__ REPORT_ID_HIDPP_SHORT ;
 int hidpp10_battery_mileage_map_status (int ) ;
 int hidpp10_battery_status_map_level (int ) ;
 int hidpp10_battery_status_map_status (int ) ;
 int power_supply_changed (scalar_t__) ;

__attribute__((used)) static int hidpp10_battery_event(struct hidpp_device *hidpp, u8 *data, int size)
{
 struct hidpp_report *report = (struct hidpp_report *)data;
 int status, capacity, level;
 bool changed;

 if (report->report_id != REPORT_ID_HIDPP_SHORT)
  return 0;

 switch (report->rap.sub_id) {
 case 128:
  capacity = hidpp->battery.capacity;
  level = hidpp10_battery_status_map_level(report->rawbytes[1]);
  status = hidpp10_battery_status_map_status(report->rawbytes[2]);
  break;
 case 129:
  capacity = report->rap.params[0];
  level = hidpp->battery.level;
  status = hidpp10_battery_mileage_map_status(report->rawbytes[3]);
  break;
 default:
  return 0;
 }

 changed = capacity != hidpp->battery.capacity ||
    level != hidpp->battery.level ||
    status != hidpp->battery.status;


 hidpp->battery.online = status == POWER_SUPPLY_STATUS_DISCHARGING ||
    status == POWER_SUPPLY_STATUS_FULL;

 if (changed) {
  hidpp->battery.level = level;
  hidpp->battery.status = status;
  if (hidpp->battery.ps)
   power_supply_changed(hidpp->battery.ps);
 }

 return 0;
}
