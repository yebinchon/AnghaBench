
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct kv_power_info {int vce_boot_level; scalar_t__ caps_stable_p_state; int sram_end; scalar_t__ dpm_table_start; } ;
struct amdgpu_vce_clock_voltage_dependency_table {int count; } ;
struct amdgpu_ps {scalar_t__ evclk; } ;
struct TYPE_4__ {struct amdgpu_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int PPSMC_MSG_VCEDPM_SetEnabledMask ;
 int SMU7_Fusion_DpmTable ;
 int VceBootLevel ;
 int amdgpu_kv_copy_bytes_to_smc (struct amdgpu_device*,scalar_t__,int *,int,int ) ;
 int amdgpu_kv_send_msg_to_smc_with_parameter (struct amdgpu_device*,int ,int) ;
 int kv_enable_vce_dpm (struct amdgpu_device*,int) ;
 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 int kv_get_vce_boot_level (struct amdgpu_device*,scalar_t__) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_update_vce_dpm(struct amdgpu_device *adev,
        struct amdgpu_ps *amdgpu_new_state,
        struct amdgpu_ps *amdgpu_current_state)
{
 struct kv_power_info *pi = kv_get_pi(adev);
 struct amdgpu_vce_clock_voltage_dependency_table *table =
  &adev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
 int ret;

 if (amdgpu_new_state->evclk > 0 && amdgpu_current_state->evclk == 0) {
  if (pi->caps_stable_p_state)
   pi->vce_boot_level = table->count - 1;
  else
   pi->vce_boot_level = kv_get_vce_boot_level(adev, amdgpu_new_state->evclk);

  ret = amdgpu_kv_copy_bytes_to_smc(adev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, VceBootLevel),
        (u8 *)&pi->vce_boot_level,
        sizeof(u8),
        pi->sram_end);
  if (ret)
   return ret;

  if (pi->caps_stable_p_state)
   amdgpu_kv_send_msg_to_smc_with_parameter(adev,
         PPSMC_MSG_VCEDPM_SetEnabledMask,
         (1 << pi->vce_boot_level));
  kv_enable_vce_dpm(adev, 1);
 } else if (amdgpu_new_state->evclk == 0 && amdgpu_current_state->evclk > 0) {
  kv_enable_vce_dpm(adev, 0);
 }

 return 0;
}
