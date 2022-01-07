
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int feature_index; int status; int capacity; int level; int online; } ;
struct hidpp_device {TYPE_1__ battery; } ;


 int HIDPP_PAGE_BATTERY_LEVEL_STATUS ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int hidpp20_batterylevel_get_battery_capacity (struct hidpp_device*,int,int*,int*,int*,int*) ;
 int hidpp20_batterylevel_get_battery_info (struct hidpp_device*,int) ;
 int hidpp_root_get_feature (struct hidpp_device*,int ,int*,int *) ;

__attribute__((used)) static int hidpp20_query_battery_info(struct hidpp_device *hidpp)
{
 u8 feature_type;
 int ret;
 int status, capacity, next_capacity, level;

 if (hidpp->battery.feature_index == 0xff) {
  ret = hidpp_root_get_feature(hidpp,
          HIDPP_PAGE_BATTERY_LEVEL_STATUS,
          &hidpp->battery.feature_index,
          &feature_type);
  if (ret)
   return ret;
 }

 ret = hidpp20_batterylevel_get_battery_capacity(hidpp,
      hidpp->battery.feature_index,
      &status, &capacity,
      &next_capacity, &level);
 if (ret)
  return ret;

 ret = hidpp20_batterylevel_get_battery_info(hidpp,
      hidpp->battery.feature_index);
 if (ret)
  return ret;

 hidpp->battery.status = status;
 hidpp->battery.capacity = capacity;
 hidpp->battery.level = level;

 hidpp->battery.online = status == POWER_SUPPLY_STATUS_DISCHARGING ||
    status == POWER_SUPPLY_STATUS_FULL;

 return 0;
}
