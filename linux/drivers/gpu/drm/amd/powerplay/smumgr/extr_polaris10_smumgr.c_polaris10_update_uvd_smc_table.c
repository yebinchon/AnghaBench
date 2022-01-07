
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_3__ platform_descriptor; int device; scalar_t__ pptable; scalar_t__ smu_backend; } ;
struct TYPE_8__ {int UvdBootLevel; } ;
struct TYPE_6__ {int dpm_table_start; } ;
struct polaris10_smumgr {TYPE_4__ smc_state_table; TYPE_2__ smu7_data; } ;
struct phm_ppt_v1_information {TYPE_1__* mm_dep_table; } ;
struct TYPE_5__ {int count; } ;


 int CGS_IND_REG__SMC ;
 int PHM_PlatformCaps_StablePState ;
 int PHM_PlatformCaps_UVDDPM ;
 int PPSMC_MSG_UVDDPM_SetEnabledMask ;
 int SMU74_Discrete_DpmTable ;
 int UvdBootLevel ;
 int cgs_read_ind_register (int ,int ,int) ;
 int cgs_write_ind_register (int ,int ,int,int) ;
 int offsetof (int ,int ) ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int polaris10_update_uvd_smc_table(struct pp_hwmgr *hwmgr)
{
 struct polaris10_smumgr *smu_data = (struct polaris10_smumgr *)(hwmgr->smu_backend);
 uint32_t mm_boot_level_offset, mm_boot_level_value;
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);

 smu_data->smc_state_table.UvdBootLevel = 0;
 if (table_info->mm_dep_table->count > 0)
  smu_data->smc_state_table.UvdBootLevel =
    (uint8_t) (table_info->mm_dep_table->count - 1);
 mm_boot_level_offset = smu_data->smu7_data.dpm_table_start + offsetof(SMU74_Discrete_DpmTable,
      UvdBootLevel);
 mm_boot_level_offset /= 4;
 mm_boot_level_offset *= 4;
 mm_boot_level_value = cgs_read_ind_register(hwmgr->device,
   CGS_IND_REG__SMC, mm_boot_level_offset);
 mm_boot_level_value &= 0x00FFFFFF;
 mm_boot_level_value |= smu_data->smc_state_table.UvdBootLevel << 24;
 cgs_write_ind_register(hwmgr->device,
   CGS_IND_REG__SMC, mm_boot_level_offset, mm_boot_level_value);

 if (!phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_UVDDPM) ||
  phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_StablePState))
  smum_send_msg_to_smc_with_parameter(hwmgr,
    PPSMC_MSG_UVDDPM_SetEnabledMask,
    (uint32_t)(1 << smu_data->smc_state_table.UvdBootLevel));
 return 0;
}
