
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;
 int kv_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;

__attribute__((used)) static int kv_set_enabled_level(struct radeon_device *rdev, u32 level)
{
 u32 new_mask = (1 << level);

 return kv_send_msg_to_smc_with_parameter(rdev,
       PPSMC_MSG_SCLKDPM_SetEnabledMask,
       new_mask);
}
