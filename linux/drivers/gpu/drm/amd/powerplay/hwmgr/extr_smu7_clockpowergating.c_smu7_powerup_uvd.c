
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; } ;


 int PHM_PlatformCaps_UVDDynamicPowerGating ;
 int PPSMC_MSG_UVDPowerON ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 scalar_t__ phm_cf_want_uvd_power_gating (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu7_powerup_uvd(struct pp_hwmgr *hwmgr)
{
 if (phm_cf_want_uvd_power_gating(hwmgr)) {
  if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
      PHM_PlatformCaps_UVDDynamicPowerGating)) {
   return smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_UVDPowerON, 1);
  } else {
   return smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_UVDPowerON, 0);
  }
 }

 return 0;
}
