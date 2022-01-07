
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ pcie_dpm_enable_mask; scalar_t__ mclk_dpm_enable_mask; scalar_t__ sclk_dpm_enable_mask; } ;
struct smu7_hwmgr {TYPE_1__ dpm_level_enable_mask; int pcie_dpm_key_disabled; int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_MCLKDPM_SetEnabledMask ;
 int PPSMC_MSG_PCIeDPM_ForceLevel ;
 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;
 int phm_get_lowest_enabled_level (struct pp_hwmgr*,scalar_t__) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu7_force_dpm_lowest(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data =
   (struct smu7_hwmgr *)(hwmgr->backend);
 uint32_t level;

 if (!data->sclk_dpm_key_disabled)
  if (data->dpm_level_enable_mask.sclk_dpm_enable_mask) {
   level = phm_get_lowest_enabled_level(hwmgr,
             data->dpm_level_enable_mask.sclk_dpm_enable_mask);
   smum_send_msg_to_smc_with_parameter(hwmgr,
           PPSMC_MSG_SCLKDPM_SetEnabledMask,
           (1 << level));

 }

 if (!data->mclk_dpm_key_disabled) {
  if (data->dpm_level_enable_mask.mclk_dpm_enable_mask) {
   level = phm_get_lowest_enabled_level(hwmgr,
             data->dpm_level_enable_mask.mclk_dpm_enable_mask);
   smum_send_msg_to_smc_with_parameter(hwmgr,
           PPSMC_MSG_MCLKDPM_SetEnabledMask,
           (1 << level));
  }
 }

 if (!data->pcie_dpm_key_disabled) {
  if (data->dpm_level_enable_mask.pcie_dpm_enable_mask) {
   level = phm_get_lowest_enabled_level(hwmgr,
             data->dpm_level_enable_mask.pcie_dpm_enable_mask);
   smum_send_msg_to_smc_with_parameter(hwmgr,
           PPSMC_MSG_PCIeDPM_ForceLevel,
           (level));
  }
 }

 return 0;
}
