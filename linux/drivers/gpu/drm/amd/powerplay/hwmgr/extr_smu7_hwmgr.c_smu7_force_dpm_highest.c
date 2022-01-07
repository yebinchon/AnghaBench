
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pcie_dpm_enable_mask; int sclk_dpm_enable_mask; int mclk_dpm_enable_mask; } ;
struct smu7_hwmgr {TYPE_1__ dpm_level_enable_mask; int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; int pcie_dpm_key_disabled; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_MCLKDPM_SetEnabledMask ;
 int PPSMC_MSG_PCIeDPM_ForceLevel ;
 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu7_force_dpm_highest(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 uint32_t level, tmp;

 if (!data->pcie_dpm_key_disabled) {
  if (data->dpm_level_enable_mask.pcie_dpm_enable_mask) {
   level = 0;
   tmp = data->dpm_level_enable_mask.pcie_dpm_enable_mask;
   while (tmp >>= 1)
    level++;

   if (level)
    smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_PCIeDPM_ForceLevel, level);
  }
 }

 if (!data->sclk_dpm_key_disabled) {
  if (data->dpm_level_enable_mask.sclk_dpm_enable_mask) {
   level = 0;
   tmp = data->dpm_level_enable_mask.sclk_dpm_enable_mask;
   while (tmp >>= 1)
    level++;

   if (level)
    smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_SCLKDPM_SetEnabledMask,
      (1 << level));
  }
 }

 if (!data->mclk_dpm_key_disabled) {
  if (data->dpm_level_enable_mask.mclk_dpm_enable_mask) {
   level = 0;
   tmp = data->dpm_level_enable_mask.mclk_dpm_enable_mask;
   while (tmp >>= 1)
    level++;

   if (level)
    smum_send_msg_to_smc_with_parameter(hwmgr,
      PPSMC_MSG_MCLKDPM_SetEnabledMask,
      (1 << level));
  }
 }

 return 0;
}
