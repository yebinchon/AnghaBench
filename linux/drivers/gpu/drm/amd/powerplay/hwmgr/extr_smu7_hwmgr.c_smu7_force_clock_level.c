
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ sclk_dpm_enable_mask; scalar_t__ mclk_dpm_enable_mask; scalar_t__ pcie_dpm_enable_mask; } ;
struct smu7_hwmgr {int pcie_dpm_key_disabled; TYPE_1__ dpm_level_enable_mask; int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
typedef enum pp_clock_type { ____Placeholder_pp_clock_type } pp_clock_type ;


 int EINVAL ;
 int PPSMC_MSG_MCLKDPM_SetEnabledMask ;
 int PPSMC_MSG_PCIeDPM_ForceLevel ;
 int PPSMC_MSG_PCIeDPM_UnForceLevel ;
 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;



 int ffs (scalar_t__) ;
 int fls (scalar_t__) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,scalar_t__) ;

__attribute__((used)) static int smu7_force_clock_level(struct pp_hwmgr *hwmgr,
  enum pp_clock_type type, uint32_t mask)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 if (mask == 0)
  return -EINVAL;

 switch (type) {
 case 128:
  if (!data->sclk_dpm_key_disabled)
   smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_SCLKDPM_SetEnabledMask,
     data->dpm_level_enable_mask.sclk_dpm_enable_mask & mask);
  break;
 case 130:
  if (!data->mclk_dpm_key_disabled)
   smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_MCLKDPM_SetEnabledMask,
     data->dpm_level_enable_mask.mclk_dpm_enable_mask & mask);
  break;
 case 129:
 {
  uint32_t tmp = mask & data->dpm_level_enable_mask.pcie_dpm_enable_mask;

  if (!data->pcie_dpm_key_disabled) {
   if (fls(tmp) != ffs(tmp))
    smum_send_msg_to_smc(hwmgr, PPSMC_MSG_PCIeDPM_UnForceLevel);
   else
    smum_send_msg_to_smc_with_parameter(hwmgr,
     PPSMC_MSG_PCIeDPM_ForceLevel,
     fls(tmp) - 1);
  }
  break;
 }
 default:
  break;
 }

 return 0;
}
