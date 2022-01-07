
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct radeon_uvd_clock_voltage_dependency_table {int count; } ;
struct TYPE_4__ {struct radeon_uvd_clock_voltage_dependency_table uvd_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {int uvd_boot_level; int sram_end; scalar_t__ dpm_table_start; scalar_t__ caps_stable_p_state; int caps_uvd_dpm; } ;


 int PPSMC_MSG_UVDDPM_SetEnabledMask ;
 int SMU7_Fusion_DpmTable ;
 int UvdBootLevel ;
 int kv_copy_bytes_to_smc (struct radeon_device*,scalar_t__,int *,int,int ) ;
 int kv_enable_uvd_dpm (struct radeon_device*,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;
 scalar_t__ offsetof (int ,int ) ;

__attribute__((used)) static int kv_update_uvd_dpm(struct radeon_device *rdev, bool gate)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct radeon_uvd_clock_voltage_dependency_table *table =
  &rdev->pm.dpm.dyn_state.uvd_clock_voltage_dependency_table;
 int ret;
 u32 mask;

 if (!gate) {
  if (table->count)
   pi->uvd_boot_level = table->count - 1;
  else
   pi->uvd_boot_level = 0;

  if (!pi->caps_uvd_dpm || pi->caps_stable_p_state) {
   mask = 1 << pi->uvd_boot_level;
  } else {
   mask = 0x1f;
  }

  ret = kv_copy_bytes_to_smc(rdev,
        pi->dpm_table_start +
        offsetof(SMU7_Fusion_DpmTable, UvdBootLevel),
        (uint8_t *)&pi->uvd_boot_level,
        sizeof(u8), pi->sram_end);
  if (ret)
   return ret;

  kv_send_msg_to_smc_with_parameter(rdev,
        PPSMC_MSG_UVDDPM_SetEnabledMask,
        mask);
 }

 return kv_enable_uvd_dpm(rdev, !gate);
}
