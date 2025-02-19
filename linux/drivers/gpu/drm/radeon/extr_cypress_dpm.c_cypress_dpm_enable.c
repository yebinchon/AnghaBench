
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; scalar_t__ dynamic_ss; scalar_t__ mvdd_control; scalar_t__ voltage_control; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {int dynamic_ac_timing; scalar_t__ memory_transition; } ;


 int ATOM_PP_PLATFORM_CAP_BACKBIAS ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ;
 int cypress_construct_voltage_tables (struct radeon_device*) ;
 int cypress_enable_display_gap (struct radeon_device*) ;
 int cypress_enable_dynamic_pcie_gen2 (struct radeon_device*,int) ;
 int cypress_enable_mclk_control (struct radeon_device*,int) ;
 int cypress_enable_sclk_control (struct radeon_device*,int) ;
 int cypress_enable_spread_spectrum (struct radeon_device*,int) ;
 int cypress_force_mc_use_s0 (struct radeon_device*,struct radeon_ps*) ;
 int cypress_force_mc_use_s1 (struct radeon_device*,struct radeon_ps*) ;
 int cypress_get_mvdd_configuration (struct radeon_device*) ;
 int cypress_get_table_locations (struct radeon_device*) ;
 int cypress_gfx_clock_gating_enable (struct radeon_device*,int) ;
 int cypress_init_smc_table (struct radeon_device*,struct radeon_ps*) ;
 int cypress_initialize_mc_reg_table (struct radeon_device*) ;
 int cypress_mg_clock_gating_enable (struct radeon_device*,int) ;
 int cypress_notify_smc_display_change (struct radeon_device*,int) ;
 int cypress_populate_mc_reg_table (struct radeon_device*,struct radeon_ps*) ;
 int cypress_program_response_times (struct radeon_device*) ;
 int cypress_set_mc_reg_address_table (struct radeon_device*) ;
 int cypress_start_dpm (struct radeon_device*) ;
 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int r7xx_start_smc (struct radeon_device*) ;
 scalar_t__ rv770_dpm_enabled (struct radeon_device*) ;
 int rv770_enable_auto_throttle_source (struct radeon_device*,int ,int) ;
 int rv770_enable_backbias (struct radeon_device*,int) ;
 int rv770_enable_thermal_protection (struct radeon_device*,int) ;
 int rv770_enable_voltage_control (struct radeon_device*,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_program_engine_speed_parameters (struct radeon_device*) ;
 int rv770_program_git (struct radeon_device*) ;
 int rv770_program_sstp (struct radeon_device*) ;
 int rv770_program_tp (struct radeon_device*) ;
 int rv770_program_tpp (struct radeon_device*) ;
 int rv770_program_vc (struct radeon_device*) ;
 int rv770_restore_cgcg (struct radeon_device*) ;
 int rv770_setup_bsp (struct radeon_device*) ;
 int rv770_upload_firmware (struct radeon_device*) ;

int cypress_dpm_enable(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
 int ret;

 if (pi->gfx_clock_gating)
  rv770_restore_cgcg(rdev);

 if (rv770_dpm_enabled(rdev))
  return -EINVAL;

 if (pi->voltage_control) {
  rv770_enable_voltage_control(rdev, 1);
  ret = cypress_construct_voltage_tables(rdev);
  if (ret) {
   DRM_ERROR("cypress_construct_voltage_tables failed\n");
   return ret;
  }
 }

 if (pi->mvdd_control) {
  ret = cypress_get_mvdd_configuration(rdev);
  if (ret) {
   DRM_ERROR("cypress_get_mvdd_configuration failed\n");
   return ret;
  }
 }

 if (eg_pi->dynamic_ac_timing) {
  cypress_set_mc_reg_address_table(rdev);
  cypress_force_mc_use_s0(rdev, boot_ps);
  ret = cypress_initialize_mc_reg_table(rdev);
  if (ret)
   eg_pi->dynamic_ac_timing = 0;
  cypress_force_mc_use_s1(rdev, boot_ps);
 }

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
  rv770_enable_backbias(rdev, 1);

 if (pi->dynamic_ss)
  cypress_enable_spread_spectrum(rdev, 1);

 if (pi->thermal_protection)
  rv770_enable_thermal_protection(rdev, 1);

 rv770_setup_bsp(rdev);
 rv770_program_git(rdev);
 rv770_program_tp(rdev);
 rv770_program_tpp(rdev);
 rv770_program_sstp(rdev);
 rv770_program_engine_speed_parameters(rdev);
 cypress_enable_display_gap(rdev);
 rv770_program_vc(rdev);

 if (pi->dynamic_pcie_gen2)
  cypress_enable_dynamic_pcie_gen2(rdev, 1);

 ret = rv770_upload_firmware(rdev);
 if (ret) {
  DRM_ERROR("rv770_upload_firmware failed\n");
  return ret;
 }

 ret = cypress_get_table_locations(rdev);
 if (ret) {
  DRM_ERROR("cypress_get_table_locations failed\n");
  return ret;
 }
 ret = cypress_init_smc_table(rdev, boot_ps);
 if (ret) {
  DRM_ERROR("cypress_init_smc_table failed\n");
  return ret;
 }
 if (eg_pi->dynamic_ac_timing) {
  ret = cypress_populate_mc_reg_table(rdev, boot_ps);
  if (ret) {
   DRM_ERROR("cypress_populate_mc_reg_table failed\n");
   return ret;
  }
 }

 cypress_program_response_times(rdev);

 r7xx_start_smc(rdev);

 ret = cypress_notify_smc_display_change(rdev, 0);
 if (ret) {
  DRM_ERROR("cypress_notify_smc_display_change failed\n");
  return ret;
 }
 cypress_enable_sclk_control(rdev, 1);

 if (eg_pi->memory_transition)
  cypress_enable_mclk_control(rdev, 1);

 cypress_start_dpm(rdev);

 if (pi->gfx_clock_gating)
  cypress_gfx_clock_gating_enable(rdev, 1);

 if (pi->mg_clock_gating)
  cypress_mg_clock_gating_enable(rdev, 1);

 rv770_enable_auto_throttle_source(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, 1);

 return 0;
}
