
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_UVDPowerOFF ;
 scalar_t__ phm_cf_want_uvd_power_gating (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

int smu7_powerdown_uvd(struct pp_hwmgr *hwmgr)
{
 if (phm_cf_want_uvd_power_gating(hwmgr))
  return smum_send_msg_to_smc(hwmgr,
    PPSMC_MSG_UVDPowerOFF);
 return 0;
}
