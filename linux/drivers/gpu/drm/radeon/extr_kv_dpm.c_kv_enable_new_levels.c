
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ lowest_valid; scalar_t__ highest_valid; } ;


 scalar_t__ SMU7_MAX_LEVELS_GRAPHICS ;
 int kv_dpm_power_level_enable (struct radeon_device*,scalar_t__,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;

__attribute__((used)) static void kv_enable_new_levels(struct radeon_device *rdev)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 i;

 for (i = 0; i < SMU7_MAX_LEVELS_GRAPHICS; i++) {
  if (i >= pi->lowest_valid && i <= pi->highest_valid)
   kv_dpm_power_level_enable(rdev, i, 1);
 }
}
