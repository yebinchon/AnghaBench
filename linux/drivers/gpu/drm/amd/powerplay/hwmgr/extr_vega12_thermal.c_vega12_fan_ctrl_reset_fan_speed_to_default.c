
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int vega12_fan_ctrl_start_smc_fan_control (struct pp_hwmgr*) ;

int vega12_fan_ctrl_reset_fan_speed_to_default(struct pp_hwmgr *hwmgr)
{
 return vega12_fan_ctrl_start_smc_fan_control(hwmgr);
}
