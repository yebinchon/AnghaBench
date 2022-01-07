
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PHM_PlatformCaps_UVDDynamicPowerGating ;
 int PHM_PlatformCaps_UVDPowerGating ;
 int PPSMC_MSG_UVDPowerON ;
 scalar_t__ PP_CAP (int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu8_dpm_powerup_uvd(struct pp_hwmgr *hwmgr)
{
 if (PP_CAP(PHM_PlatformCaps_UVDPowerGating)) {
  return smum_send_msg_to_smc_with_parameter(
   hwmgr,
   PPSMC_MSG_UVDPowerON,
   PP_CAP(PHM_PlatformCaps_UVDDynamicPowerGating) ? 1 : 0);
 }

 return 0;
}
