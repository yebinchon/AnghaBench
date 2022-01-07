
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int usMaxFanRPM; } ;
struct TYPE_4__ {scalar_t__ bNoFan; } ;
struct TYPE_5__ {TYPE_3__ advanceFanControlParameters; TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; } ;


 scalar_t__ vega10_get_current_rpm (struct pp_hwmgr*,int*) ;

int vega10_fan_ctrl_get_fan_speed_percent(struct pp_hwmgr *hwmgr,
  uint32_t *speed)
{
 uint32_t current_rpm;
 uint32_t percent = 0;

 if (hwmgr->thermal_controller.fanInfo.bNoFan)
  return 0;

 if (vega10_get_current_rpm(hwmgr, &current_rpm))
  return -1;

 if (hwmgr->thermal_controller.
   advanceFanControlParameters.usMaxFanRPM != 0)
  percent = current_rpm * 100 /
   hwmgr->thermal_controller.
   advanceFanControlParameters.usMaxFanRPM;

 *speed = percent > 100 ? 100 : percent;

 return 0;
}
