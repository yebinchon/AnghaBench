
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kv_power_info {scalar_t__ enable_auto_thermal_throttling; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_7__ {TYPE_2__ thermal; } ;
struct TYPE_8__ {TYPE_3__ dpm; int int_thermal_type; } ;
struct TYPE_5__ {scalar_t__ installed; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_1__ irq; } ;


 int AMDGPU_THERMAL_IRQ_HIGH_TO_LOW ;
 int AMDGPU_THERMAL_IRQ_LOW_TO_HIGH ;
 int DRM_ERROR (char*) ;
 int KV_TEMP_RANGE_MAX ;
 int KV_TEMP_RANGE_MIN ;
 int amdgpu_irq_get (struct amdgpu_device*,int *,int ) ;
 scalar_t__ amdgpu_is_internal_thermal_sensor (int ) ;
 int amdgpu_kv_smc_bapm_enable (struct amdgpu_device*,int) ;
 int kv_calculate_dfs_bypass_settings (struct amdgpu_device*) ;
 int kv_enable_auto_thermal_throttling (struct amdgpu_device*) ;
 int kv_enable_didt (struct amdgpu_device*,int) ;
 int kv_enable_dpm_voltage_scaling (struct amdgpu_device*) ;
 int kv_enable_smc_cac (struct amdgpu_device*,int) ;
 int kv_enable_ulv (struct amdgpu_device*,int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_init_fps_limits (struct amdgpu_device*) ;
 int kv_init_graphics_levels (struct amdgpu_device*) ;
 int kv_initialize_hardware_cac_manager (struct amdgpu_device*) ;
 int kv_populate_acp_table (struct amdgpu_device*) ;
 int kv_populate_samu_table (struct amdgpu_device*) ;
 int kv_populate_uvd_table (struct amdgpu_device*) ;
 int kv_populate_vce_table (struct amdgpu_device*) ;
 int kv_process_firmware_header (struct amdgpu_device*) ;
 int kv_program_bootup_state (struct amdgpu_device*) ;
 int kv_program_vc (struct amdgpu_device*) ;
 int kv_reset_acp_boot_level (struct amdgpu_device*) ;
 int kv_set_dpm_boot_state (struct amdgpu_device*) ;
 int kv_set_dpm_interval (struct amdgpu_device*) ;
 int kv_set_thermal_temperature_range (struct amdgpu_device*,int ,int ) ;
 int kv_start_am (struct amdgpu_device*) ;
 int kv_start_dpm (struct amdgpu_device*) ;
 int kv_upload_dpm_settings (struct amdgpu_device*) ;

__attribute__((used)) static int kv_dpm_enable(struct amdgpu_device *adev)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 int ret;

 ret = kv_process_firmware_header(adev);
 if (ret) {
  DRM_ERROR("kv_process_firmware_header failed\n");
  return ret;
 }
 kv_init_fps_limits(adev);
 kv_init_graphics_levels(adev);
 ret = kv_program_bootup_state(adev);
 if (ret) {
  DRM_ERROR("kv_program_bootup_state failed\n");
  return ret;
 }
 kv_calculate_dfs_bypass_settings(adev);
 ret = kv_upload_dpm_settings(adev);
 if (ret) {
  DRM_ERROR("kv_upload_dpm_settings failed\n");
  return ret;
 }
 ret = kv_populate_uvd_table(adev);
 if (ret) {
  DRM_ERROR("kv_populate_uvd_table failed\n");
  return ret;
 }
 ret = kv_populate_vce_table(adev);
 if (ret) {
  DRM_ERROR("kv_populate_vce_table failed\n");
  return ret;
 }
 ret = kv_populate_samu_table(adev);
 if (ret) {
  DRM_ERROR("kv_populate_samu_table failed\n");
  return ret;
 }
 ret = kv_populate_acp_table(adev);
 if (ret) {
  DRM_ERROR("kv_populate_acp_table failed\n");
  return ret;
 }
 kv_program_vc(adev);



 kv_start_am(adev);
 if (pi->enable_auto_thermal_throttling) {
  ret = kv_enable_auto_thermal_throttling(adev);
  if (ret) {
   DRM_ERROR("kv_enable_auto_thermal_throttling failed\n");
   return ret;
  }
 }
 ret = kv_enable_dpm_voltage_scaling(adev);
 if (ret) {
  DRM_ERROR("kv_enable_dpm_voltage_scaling failed\n");
  return ret;
 }
 ret = kv_set_dpm_interval(adev);
 if (ret) {
  DRM_ERROR("kv_set_dpm_interval failed\n");
  return ret;
 }
 ret = kv_set_dpm_boot_state(adev);
 if (ret) {
  DRM_ERROR("kv_set_dpm_boot_state failed\n");
  return ret;
 }
 ret = kv_enable_ulv(adev, 1);
 if (ret) {
  DRM_ERROR("kv_enable_ulv failed\n");
  return ret;
 }
 kv_start_dpm(adev);
 ret = kv_enable_didt(adev, 1);
 if (ret) {
  DRM_ERROR("kv_enable_didt failed\n");
  return ret;
 }
 ret = kv_enable_smc_cac(adev, 1);
 if (ret) {
  DRM_ERROR("kv_enable_smc_cac failed\n");
  return ret;
 }

 kv_reset_acp_boot_level(adev);

 ret = amdgpu_kv_smc_bapm_enable(adev, 0);
 if (ret) {
  DRM_ERROR("amdgpu_kv_smc_bapm_enable failed\n");
  return ret;
 }

 if (adev->irq.installed &&
     amdgpu_is_internal_thermal_sensor(adev->pm.int_thermal_type)) {
  ret = kv_set_thermal_temperature_range(adev, KV_TEMP_RANGE_MIN, KV_TEMP_RANGE_MAX);
  if (ret) {
   DRM_ERROR("kv_set_thermal_temperature_range failed\n");
   return ret;
  }
  amdgpu_irq_get(adev, &adev->pm.dpm.thermal.irq,
          AMDGPU_THERMAL_IRQ_LOW_TO_HIGH);
  amdgpu_irq_get(adev, &adev->pm.dpm.thermal.irq,
          AMDGPU_THERMAL_IRQ_HIGH_TO_LOW);
 }

 return ret;
}
