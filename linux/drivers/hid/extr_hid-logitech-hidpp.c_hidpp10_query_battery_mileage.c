
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * params; } ;
struct hidpp_report {TYPE_1__ rap; } ;
struct TYPE_4__ {int status; int online; int capacity; } ;
struct hidpp_device {TYPE_2__ battery; } ;


 int HIDPP_GET_REGISTER ;
 int HIDPP_REG_BATTERY_MILEAGE ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int REPORT_ID_HIDPP_SHORT ;
 int hidpp10_battery_mileage_map_status (int ) ;
 int hidpp_send_rap_command_sync (struct hidpp_device*,int ,int ,int ,int *,int ,struct hidpp_report*) ;

__attribute__((used)) static int hidpp10_query_battery_mileage(struct hidpp_device *hidpp)
{
 struct hidpp_report response;
 int ret, status;

 ret = hidpp_send_rap_command_sync(hidpp,
     REPORT_ID_HIDPP_SHORT,
     HIDPP_GET_REGISTER,
     HIDPP_REG_BATTERY_MILEAGE,
     ((void*)0), 0, &response);
 if (ret)
  return ret;

 hidpp->battery.capacity = response.rap.params[0];
 status = hidpp10_battery_mileage_map_status(response.rap.params[2]);
 hidpp->battery.status = status;

 hidpp->battery.online = status == POWER_SUPPLY_STATUS_DISCHARGING ||
    status == POWER_SUPPLY_STATUS_FULL;

 return 0;
}
