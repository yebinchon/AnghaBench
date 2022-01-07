
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; TYPE_1__* performance_levels; } ;
struct evergreen_power_info {int requested_rps; } ;
struct TYPE_2__ {int sclk; } ;


 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 struct ni_ps* ni_get_ps (int *) ;

u32 ni_dpm_get_sclk(struct radeon_device *rdev, bool low)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct ni_ps *requested_state = ni_get_ps(&eg_pi->requested_rps);

 if (low)
  return requested_state->performance_levels[0].sclk;
 else
  return requested_state->performance_levels[requested_state->performance_level_count - 1].sclk;
}
