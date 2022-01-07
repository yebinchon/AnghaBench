
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int fan_ctrl_enabled; } ;


 int PPSMC_StopFanControl ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int smu7_fan_ctrl_stop_smc_fan_control(struct pp_hwmgr *hwmgr)
{
 hwmgr->fan_ctrl_enabled = 0;
 return smum_send_msg_to_smc(hwmgr, PPSMC_StopFanControl);
}
