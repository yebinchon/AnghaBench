
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct smu8_hwmgr {int dpm_flags; } ;
struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; struct smu8_hwmgr* backend; } ;


 int DPMFlags_UVD_Enabled ;
 int PHM_PlatformCaps_UVDDPM ;
 int PPSMC_MSG_DisableAllSmuFeatures ;
 int PPSMC_MSG_EnableAllSmuFeatures ;
 int UVD_DPM_MASK ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;

__attribute__((used)) static int smu8_enable_disable_uvd_dpm(struct pp_hwmgr *hwmgr, bool enable)
{
 struct smu8_hwmgr *data = hwmgr->backend;
 uint32_t dpm_features = 0;

 if (enable &&
  phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
      PHM_PlatformCaps_UVDDPM)) {
  data->dpm_flags |= DPMFlags_UVD_Enabled;
  dpm_features |= UVD_DPM_MASK;
  smum_send_msg_to_smc_with_parameter(hwmgr,
       PPSMC_MSG_EnableAllSmuFeatures, dpm_features);
 } else {
  dpm_features |= UVD_DPM_MASK;
  data->dpm_flags &= ~DPMFlags_UVD_Enabled;
  smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_DisableAllSmuFeatures, dpm_features);
 }
 return 0;
}
