
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {int acp_boot_level; int caps_stable_p_state; } ;


 int PPSMC_MSG_ACPDPM_SetEnabledMask ;
 int kv_get_acp_boot_level (struct radeon_device*) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;

__attribute__((used)) static void kv_update_acp_boot_level(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u8 acp_boot_level;

 if (!pi->caps_stable_p_state) {
  acp_boot_level = kv_get_acp_boot_level(rdev);
  if (acp_boot_level != pi->acp_boot_level) {
   pi->acp_boot_level = acp_boot_level;
   kv_send_msg_to_smc_with_parameter(rdev,
         PPSMC_MSG_ACPDPM_SetEnabledMask,
         (1 << pi->acp_boot_level));
  }
 }
}
