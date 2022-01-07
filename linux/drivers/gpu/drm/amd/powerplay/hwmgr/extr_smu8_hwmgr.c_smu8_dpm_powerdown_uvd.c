
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PHM_PlatformCaps_UVDPowerGating ;
 int PPSMC_MSG_UVDPowerOFF ;
 scalar_t__ PP_CAP (int ) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu8_dpm_powerdown_uvd(struct pp_hwmgr *hwmgr)
{
 if (PP_CAP(PHM_PlatformCaps_UVDPowerGating))
  return smum_send_msg_to_smc(hwmgr, PPSMC_MSG_UVDPowerOFF);
 return 0;
}
