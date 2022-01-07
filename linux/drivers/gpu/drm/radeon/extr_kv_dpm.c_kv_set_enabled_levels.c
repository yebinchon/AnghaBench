
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {int lowest_valid; int highest_valid; } ;


 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 int kv_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;

__attribute__((used)) static int kv_set_enabled_levels(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 i, new_mask = 0;

 for (i = pi->lowest_valid; i <= pi->highest_valid; i++)
  new_mask |= (1 << i);

 return kv_send_msg_to_smc_with_parameter(rdev,
       PPSMC_MSG_SCLKDPM_SetEnabledMask,
       new_mask);
}
