
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ulMaxRPM; scalar_t__ ulMinRPM; scalar_t__ ucTachometerPulsesPerRevolution; scalar_t__ bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; } ;
struct phm_fan_speed_info {int supports_percent_read; int supports_percent_write; int max_percent; int supports_rpm_read; int supports_rpm_write; scalar_t__ max_rpm; scalar_t__ min_rpm; scalar_t__ min_percent; } ;


 int ENODEV ;
 int PHM_PlatformCaps_FanSpeedInTableIsRPM ;
 scalar_t__ PP_CAP (int ) ;

int smu7_fan_ctrl_get_fan_speed_info(struct pp_hwmgr *hwmgr,
  struct phm_fan_speed_info *fan_speed_info)
{
 if (hwmgr->thermal_controller.fanInfo.bNoFan)
  return -ENODEV;

 fan_speed_info->supports_percent_read = 1;
 fan_speed_info->supports_percent_write = 1;
 fan_speed_info->min_percent = 0;
 fan_speed_info->max_percent = 100;

 if (PP_CAP(PHM_PlatformCaps_FanSpeedInTableIsRPM) &&
     hwmgr->thermal_controller.fanInfo.ucTachometerPulsesPerRevolution) {
  fan_speed_info->supports_rpm_read = 1;
  fan_speed_info->supports_rpm_write = 1;
  fan_speed_info->min_rpm = hwmgr->thermal_controller.fanInfo.ulMinRPM;
  fan_speed_info->max_rpm = hwmgr->thermal_controller.fanInfo.ulMaxRPM;
 } else {
  fan_speed_info->min_rpm = 0;
  fan_speed_info->max_rpm = 0;
 }

 return 0;
}
