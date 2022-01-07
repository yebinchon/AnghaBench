
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct PP_TemperatureRange {int max; int min; } ;


 int EINVAL ;
 int smu7_thermal_enable_alert (struct pp_hwmgr*) ;
 int smu7_thermal_initialize (struct pp_hwmgr*) ;
 int smu7_thermal_set_temperature_range (struct pp_hwmgr*,int ,int ) ;
 int smu7_thermal_start_smc_fan_control (struct pp_hwmgr*) ;
 int smum_thermal_avfs_enable (struct pp_hwmgr*) ;
 int smum_thermal_setup_fan_table (struct pp_hwmgr*) ;

int smu7_start_thermal_controller(struct pp_hwmgr *hwmgr,
    struct PP_TemperatureRange *range)
{
 int ret = 0;

 if (range == ((void*)0))
  return -EINVAL;

 smu7_thermal_initialize(hwmgr);
 ret = smu7_thermal_set_temperature_range(hwmgr, range->min, range->max);
 if (ret)
  return -EINVAL;
 smu7_thermal_enable_alert(hwmgr);
 ret = smum_thermal_avfs_enable(hwmgr);
 if (ret)
  return -EINVAL;






 smum_thermal_setup_fan_table(hwmgr);
 smu7_thermal_start_smc_fan_control(hwmgr);
 return 0;
}
