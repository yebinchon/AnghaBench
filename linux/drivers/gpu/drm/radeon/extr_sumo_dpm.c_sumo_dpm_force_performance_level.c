
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sumo_ps {int num_levels; } ;
struct radeon_ps {int dummy; } ;
struct sumo_power_info {scalar_t__ enable_boost; struct radeon_ps current_rps; } ;
struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;


 int RADEON_DPM_FORCED_LEVEL_HIGH ;
 int RADEON_DPM_FORCED_LEVEL_LOW ;
 int sumo_enable_boost (struct radeon_device*,struct radeon_ps*,int) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 struct sumo_ps* sumo_get_ps (struct radeon_ps*) ;
 int sumo_power_level_enable (struct radeon_device*,int,int) ;
 int sumo_set_forced_level (struct radeon_device*,int) ;
 int sumo_set_forced_mode (struct radeon_device*,int) ;
 int sumo_set_forced_mode_enabled (struct radeon_device*) ;

int sumo_dpm_force_performance_level(struct radeon_device *rdev,
         enum radeon_dpm_forced_level level)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct radeon_ps *rps = &pi->current_rps;
 struct sumo_ps *ps = sumo_get_ps(rps);
 int i;

 if (ps->num_levels <= 1)
  return 0;

 if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
  if (pi->enable_boost)
   sumo_enable_boost(rdev, rps, 0);
  sumo_power_level_enable(rdev, ps->num_levels - 1, 1);
  sumo_set_forced_level(rdev, ps->num_levels - 1);
  sumo_set_forced_mode_enabled(rdev);
  for (i = 0; i < ps->num_levels - 1; i++) {
   sumo_power_level_enable(rdev, i, 0);
  }
  sumo_set_forced_mode(rdev, 0);
  sumo_set_forced_mode_enabled(rdev);
  sumo_set_forced_mode(rdev, 0);
 } else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
  if (pi->enable_boost)
   sumo_enable_boost(rdev, rps, 0);
  sumo_power_level_enable(rdev, 0, 1);
  sumo_set_forced_level(rdev, 0);
  sumo_set_forced_mode_enabled(rdev);
  for (i = 1; i < ps->num_levels; i++) {
   sumo_power_level_enable(rdev, i, 0);
  }
  sumo_set_forced_mode(rdev, 0);
  sumo_set_forced_mode_enabled(rdev);
  sumo_set_forced_mode(rdev, 0);
 } else {
  for (i = 0; i < ps->num_levels; i++) {
   sumo_power_level_enable(rdev, i, 1);
  }
  if (pi->enable_boost)
   sumo_enable_boost(rdev, rps, 1);
 }

 rdev->pm.dpm.forced_level = level;

 return 0;
}
