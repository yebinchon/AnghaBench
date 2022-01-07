
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int ac_power; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;
struct kv_power_info {scalar_t__ enable_dpm; scalar_t__ bapm_enable; struct radeon_ps current_rps; struct radeon_ps requested_rps; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int DRM_ERROR (char*) ;
 int kv_calculate_dpm_settings (struct radeon_device*) ;
 int kv_calculate_ds_divider (struct radeon_device*) ;
 int kv_calculate_nbps_level_settings (struct radeon_device*) ;
 int kv_enable_nb_dpm (struct radeon_device*,int) ;
 int kv_enable_new_levels (struct radeon_device*) ;
 int kv_force_lowest_valid (struct radeon_device*) ;
 int kv_freeze_sclk_dpm (struct radeon_device*,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_program_nbps_index_settings (struct radeon_device*,struct radeon_ps*) ;
 int kv_set_enabled_levels (struct radeon_device*) ;
 int kv_set_valid_clock_range (struct radeon_device*,struct radeon_ps*) ;
 int kv_smc_bapm_enable (struct radeon_device*,int ) ;
 int kv_unforce_levels (struct radeon_device*) ;
 int kv_update_acp_boot_level (struct radeon_device*) ;
 int kv_update_dfs_bypass_settings (struct radeon_device*,struct radeon_ps*) ;
 int kv_update_sclk_t (struct radeon_device*) ;
 int kv_update_vce_dpm (struct radeon_device*,struct radeon_ps*,struct radeon_ps*) ;
 int kv_upload_dpm_settings (struct radeon_device*) ;

int kv_dpm_set_power_state(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct radeon_ps *new_ps = &pi->requested_rps;
 struct radeon_ps *old_ps = &pi->current_rps;
 int ret;

 if (pi->bapm_enable) {
  ret = kv_smc_bapm_enable(rdev, rdev->pm.dpm.ac_power);
  if (ret) {
   DRM_ERROR("kv_smc_bapm_enable failed\n");
   return ret;
  }
 }

 if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS) {
  if (pi->enable_dpm) {
   kv_set_valid_clock_range(rdev, new_ps);
   kv_update_dfs_bypass_settings(rdev, new_ps);
   ret = kv_calculate_ds_divider(rdev);
   if (ret) {
    DRM_ERROR("kv_calculate_ds_divider failed\n");
    return ret;
   }
   kv_calculate_nbps_level_settings(rdev);
   kv_calculate_dpm_settings(rdev);
   kv_force_lowest_valid(rdev);
   kv_enable_new_levels(rdev);
   kv_upload_dpm_settings(rdev);
   kv_program_nbps_index_settings(rdev, new_ps);
   kv_unforce_levels(rdev);
   kv_set_enabled_levels(rdev);
   kv_force_lowest_valid(rdev);
   kv_unforce_levels(rdev);

   ret = kv_update_vce_dpm(rdev, new_ps, old_ps);
   if (ret) {
    DRM_ERROR("kv_update_vce_dpm failed\n");
    return ret;
   }
   kv_update_sclk_t(rdev);
   if (rdev->family == CHIP_MULLINS)
    kv_enable_nb_dpm(rdev, 1);
  }
 } else {
  if (pi->enable_dpm) {
   kv_set_valid_clock_range(rdev, new_ps);
   kv_update_dfs_bypass_settings(rdev, new_ps);
   ret = kv_calculate_ds_divider(rdev);
   if (ret) {
    DRM_ERROR("kv_calculate_ds_divider failed\n");
    return ret;
   }
   kv_calculate_nbps_level_settings(rdev);
   kv_calculate_dpm_settings(rdev);
   kv_freeze_sclk_dpm(rdev, 1);
   kv_upload_dpm_settings(rdev);
   kv_program_nbps_index_settings(rdev, new_ps);
   kv_freeze_sclk_dpm(rdev, 0);
   kv_set_enabled_levels(rdev);
   ret = kv_update_vce_dpm(rdev, new_ps, old_ps);
   if (ret) {
    DRM_ERROR("kv_update_vce_dpm failed\n");
    return ret;
   }
   kv_update_acp_boot_level(rdev);
   kv_update_sclk_t(rdev);
   kv_enable_nb_dpm(rdev, 1);
  }
 }

 return 0;
}
