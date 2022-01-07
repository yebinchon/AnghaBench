
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_ps {int performance_level_count; TYPE_1__* performance_levels; } ;
struct ci_power_info {int requested_rps; } ;
struct TYPE_2__ {int sclk; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 struct ci_ps* ci_get_ps (int *) ;

u32 ci_dpm_get_sclk(struct radeon_device *rdev, bool low)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 struct ci_ps *requested_state = ci_get_ps(&pi->requested_rps);

 if (low)
  return requested_state->performance_levels[0].sclk;
 else
  return requested_state->performance_levels[requested_state->performance_level_count - 1].sclk;
}
