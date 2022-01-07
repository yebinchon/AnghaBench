
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;


 int RADEON_DPM_FORCED_LEVEL_AUTO ;
 int RADEON_DPM_FORCED_LEVEL_HIGH ;
 int RADEON_DPM_FORCED_LEVEL_LOW ;
 int kv_force_dpm_highest (struct radeon_device*) ;
 int kv_force_dpm_lowest (struct radeon_device*) ;
 int kv_unforce_levels (struct radeon_device*) ;

int kv_dpm_force_performance_level(struct radeon_device *rdev,
       enum radeon_dpm_forced_level level)
{
 int ret;

 if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
  ret = kv_force_dpm_highest(rdev);
  if (ret)
   return ret;
 } else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
  ret = kv_force_dpm_lowest(rdev);
  if (ret)
   return ret;
 } else if (level == RADEON_DPM_FORCED_LEVEL_AUTO) {
  ret = kv_unforce_levels(rdev);
  if (ret)
   return ret;
 }

 rdev->pm.dpm.forced_level = level;

 return 0;
}
