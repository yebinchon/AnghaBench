
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct PP_TemperatureRange {int dummy; } ;


 int EINVAL ;
 int vega12_thermal_enable_alert (struct pp_hwmgr*) ;
 int vega12_thermal_set_temperature_range (struct pp_hwmgr*,struct PP_TemperatureRange*) ;
 int vega12_thermal_setup_fan_table (struct pp_hwmgr*) ;
 int vega12_thermal_start_smc_fan_control (struct pp_hwmgr*) ;

int vega12_start_thermal_controller(struct pp_hwmgr *hwmgr,
    struct PP_TemperatureRange *range)
{
 int ret = 0;

 if (range == ((void*)0))
  return -EINVAL;

 ret = vega12_thermal_set_temperature_range(hwmgr, range);
 if (ret)
  return -EINVAL;

 vega12_thermal_enable_alert(hwmgr);





 ret = vega12_thermal_setup_fan_table(hwmgr);
 if (ret)
  return -EINVAL;

 vega12_thermal_start_smc_fan_control(hwmgr);

 return 0;
}
