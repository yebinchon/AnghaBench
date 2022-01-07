
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ smu_backend; } ;
struct ci_smumgr {int power_tune_table; } ;
struct SMU7_Discrete_PmFuses {int dummy; } ;


 int EINVAL ;
 int PHM_PlatformCaps_PowerContainment ;
 int PmFuseTable ;
 int SMC_RAM_END ;
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ;
 int SMU7_Firmware_Header ;
 int ci_copy_bytes_to_smc (struct pp_hwmgr*,int ,int *,int,int ) ;
 int ci_min_max_v_gnbl_pm_lid_from_bapm_vddc (struct pp_hwmgr*) ;
 int ci_populate_bapm_vddc_base_leakage_sidd (struct pp_hwmgr*) ;
 int ci_populate_bapm_vddc_vid_sidd (struct pp_hwmgr*) ;
 int ci_populate_dw8 (struct pp_hwmgr*,int ) ;
 int ci_populate_fuzzy_fan (struct pp_hwmgr*,int ) ;
 int ci_populate_svi_load_line (struct pp_hwmgr*) ;
 int ci_populate_tdc_limit (struct pp_hwmgr*) ;
 int ci_populate_vddc_vid (struct pp_hwmgr*) ;
 scalar_t__ ci_read_smc_sram_dword (struct pp_hwmgr*,scalar_t__,int *,int ) ;
 scalar_t__ offsetof (int ,int ) ;
 scalar_t__ phm_cap_enabled (int ,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int ci_populate_pm_fuses(struct pp_hwmgr *hwmgr)
{
 struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);
 uint32_t pm_fuse_table_offset;
 int ret = 0;

 if (phm_cap_enabled(hwmgr->platform_descriptor.platformCaps,
   PHM_PlatformCaps_PowerContainment)) {
  if (ci_read_smc_sram_dword(hwmgr,
    SMU7_FIRMWARE_HEADER_LOCATION +
    offsetof(SMU7_Firmware_Header, PmFuseTable),
    &pm_fuse_table_offset, SMC_RAM_END)) {
   pr_err("Attempt to get pm_fuse_table_offset Failed!\n");
   return -EINVAL;
  }


  ret = ci_populate_bapm_vddc_vid_sidd(hwmgr);

  ret |= ci_populate_vddc_vid(hwmgr);

  ret |= ci_populate_svi_load_line(hwmgr);

  ret |= ci_populate_tdc_limit(hwmgr);

  ret |= ci_populate_dw8(hwmgr, pm_fuse_table_offset);

  ret |= ci_populate_fuzzy_fan(hwmgr, pm_fuse_table_offset);

  ret |= ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(hwmgr);

  ret |= ci_populate_bapm_vddc_base_leakage_sidd(hwmgr);
  if (ret)
   return ret;

  ret = ci_copy_bytes_to_smc(hwmgr, pm_fuse_table_offset,
    (uint8_t *)&smu_data->power_tune_table,
    sizeof(struct SMU7_Discrete_PmFuses), SMC_RAM_END);
 }
 return ret;
}
