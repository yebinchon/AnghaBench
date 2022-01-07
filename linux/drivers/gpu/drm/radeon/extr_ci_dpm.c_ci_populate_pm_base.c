
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int sram_end; int smc_powertune_table; scalar_t__ caps_power_containment; } ;
typedef int SMU7_Discrete_PmFuses ;


 int PmFuseTable ;
 scalar_t__ SMU7_FIRMWARE_HEADER_LOCATION ;
 int SMU7_Firmware_Header ;
 int ci_copy_bytes_to_smc (struct radeon_device*,int ,int *,int,int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_min_max_v_gnbl_pm_lid_from_bapm_vddc (struct radeon_device*) ;
 int ci_populate_bapm_vddc_base_leakage_sidd (struct radeon_device*) ;
 int ci_populate_bapm_vddc_vid_sidd (struct radeon_device*) ;
 int ci_populate_dw8 (struct radeon_device*) ;
 int ci_populate_fuzzy_fan (struct radeon_device*) ;
 int ci_populate_svi_load_line (struct radeon_device*) ;
 int ci_populate_tdc_limit (struct radeon_device*) ;
 int ci_populate_vddc_vid (struct radeon_device*) ;
 int ci_read_smc_sram_dword (struct radeon_device*,scalar_t__,int *,int ) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int ci_populate_pm_base(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 pm_fuse_table_offset;
 int ret;

 if (pi->caps_power_containment) {
  ret = ci_read_smc_sram_dword(rdev,
          SMU7_FIRMWARE_HEADER_LOCATION +
          offsetof(SMU7_Firmware_Header, PmFuseTable),
          &pm_fuse_table_offset, pi->sram_end);
  if (ret)
   return ret;
  ret = ci_populate_bapm_vddc_vid_sidd(rdev);
  if (ret)
   return ret;
  ret = ci_populate_vddc_vid(rdev);
  if (ret)
   return ret;
  ret = ci_populate_svi_load_line(rdev);
  if (ret)
   return ret;
  ret = ci_populate_tdc_limit(rdev);
  if (ret)
   return ret;
  ret = ci_populate_dw8(rdev);
  if (ret)
   return ret;
  ret = ci_populate_fuzzy_fan(rdev);
  if (ret)
   return ret;
  ret = ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(rdev);
  if (ret)
   return ret;
  ret = ci_populate_bapm_vddc_base_leakage_sidd(rdev);
  if (ret)
   return ret;
  ret = ci_copy_bytes_to_smc(rdev, pm_fuse_table_offset,
        (u8 *)&pi->smc_powertune_table,
        sizeof(SMU7_Discrete_PmFuses), pi->sram_end);
  if (ret)
   return ret;
 }

 return 0;
}
