
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int pcie_dpm_key_disabled; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int EINVAL ;
 int PPSMC_MSG_PCIeDPM_UnForceLevel ;
 int smu7_upload_dpm_level_enable_mask (struct pp_hwmgr*) ;
 int smum_is_dpm_running (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_unforce_dpm_levels(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (!smum_is_dpm_running(hwmgr))
  return -EINVAL;

 if (!data->pcie_dpm_key_disabled) {
  smum_send_msg_to_smc(hwmgr,
    PPSMC_MSG_PCIeDPM_UnForceLevel);
 }

 return smu7_upload_dpm_level_enable_mask(hwmgr);
}
