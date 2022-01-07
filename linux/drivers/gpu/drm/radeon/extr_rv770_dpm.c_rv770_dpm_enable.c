
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rv7xx_power_info {scalar_t__ mg_clock_gating; scalar_t__ gfx_clock_gating; scalar_t__ dynamic_pcie_gen2; scalar_t__ thermal_protection; scalar_t__ mvdd_control; scalar_t__ dcodt; scalar_t__ voltage_control; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {int platform_caps; struct radeon_ps* boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;


 int ATOM_PP_PLATFORM_CAP_BACKBIAS ;
 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL ;
 int r7xx_start_smc (struct radeon_device*) ;
 int rv730_start_dpm (struct radeon_device*) ;
 int rv770_construct_vddc_table (struct radeon_device*) ;
 scalar_t__ rv770_dpm_enabled (struct radeon_device*) ;
 int rv770_enable_auto_throttle_source (struct radeon_device*,int ,int) ;
 int rv770_enable_backbias (struct radeon_device*,int) ;
 int rv770_enable_display_gap (struct radeon_device*) ;
 int rv770_enable_dynamic_pcie_gen2 (struct radeon_device*,int) ;
 int rv770_enable_spread_spectrum (struct radeon_device*,int) ;
 int rv770_enable_thermal_protection (struct radeon_device*,int) ;
 int rv770_enable_voltage_control (struct radeon_device*,int) ;
 int rv770_get_mvdd_configuration (struct radeon_device*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 int rv770_gfx_clock_gating_enable (struct radeon_device*,int) ;
 int rv770_init_smc_table (struct radeon_device*,struct radeon_ps*) ;
 int rv770_mg_clock_gating_enable (struct radeon_device*,int) ;
 int rv770_program_engine_speed_parameters (struct radeon_device*) ;
 int rv770_program_git (struct radeon_device*) ;
 int rv770_program_mpll_timing_parameters (struct radeon_device*) ;
 int rv770_program_response_times (struct radeon_device*) ;
 int rv770_program_sstp (struct radeon_device*) ;
 int rv770_program_tp (struct radeon_device*) ;
 int rv770_program_tpp (struct radeon_device*) ;
 int rv770_program_vc (struct radeon_device*) ;
 int rv770_restore_cgcg (struct radeon_device*) ;
 int rv770_retrieve_odt_values (struct radeon_device*) ;
 int rv770_setup_bsp (struct radeon_device*) ;
 int rv770_start_dpm (struct radeon_device*) ;
 int rv770_upload_firmware (struct radeon_device*) ;

int rv770_dpm_enable(struct radeon_device *rdev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct radeon_ps *boot_ps = rdev->pm.dpm.boot_ps;
 int ret;

 if (pi->gfx_clock_gating)
  rv770_restore_cgcg(rdev);

 if (rv770_dpm_enabled(rdev))
  return -EINVAL;

 if (pi->voltage_control) {
  rv770_enable_voltage_control(rdev, 1);
  ret = rv770_construct_vddc_table(rdev);
  if (ret) {
   DRM_ERROR("rv770_construct_vddc_table failed\n");
   return ret;
  }
 }

 if (pi->dcodt)
  rv770_retrieve_odt_values(rdev);

 if (pi->mvdd_control) {
  ret = rv770_get_mvdd_configuration(rdev);
  if (ret) {
   DRM_ERROR("rv770_get_mvdd_configuration failed\n");
   return ret;
  }
 }

 if (rdev->pm.dpm.platform_caps & ATOM_PP_PLATFORM_CAP_BACKBIAS)
  rv770_enable_backbias(rdev, 1);

 rv770_enable_spread_spectrum(rdev, 1);

 if (pi->thermal_protection)
  rv770_enable_thermal_protection(rdev, 1);

 rv770_program_mpll_timing_parameters(rdev);
 rv770_setup_bsp(rdev);
 rv770_program_git(rdev);
 rv770_program_tp(rdev);
 rv770_program_tpp(rdev);
 rv770_program_sstp(rdev);
 rv770_program_engine_speed_parameters(rdev);
 rv770_enable_display_gap(rdev);
 rv770_program_vc(rdev);

 if (pi->dynamic_pcie_gen2)
  rv770_enable_dynamic_pcie_gen2(rdev, 1);

 ret = rv770_upload_firmware(rdev);
 if (ret) {
  DRM_ERROR("rv770_upload_firmware failed\n");
  return ret;
 }
 ret = rv770_init_smc_table(rdev, boot_ps);
 if (ret) {
  DRM_ERROR("rv770_init_smc_table failed\n");
  return ret;
 }

 rv770_program_response_times(rdev);
 r7xx_start_smc(rdev);

 if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  rv730_start_dpm(rdev);
 else
  rv770_start_dpm(rdev);

 if (pi->gfx_clock_gating)
  rv770_gfx_clock_gating_enable(rdev, 1);

 if (pi->mg_clock_gating)
  rv770_mg_clock_gating_enable(rdev, 1);

 rv770_enable_auto_throttle_source(rdev, RADEON_DPM_AUTO_THROTTLE_SRC_THERMAL, 1);

 return 0;
}
