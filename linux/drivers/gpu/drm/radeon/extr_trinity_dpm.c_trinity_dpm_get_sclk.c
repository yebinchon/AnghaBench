
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trinity_ps {int num_levels; TYPE_1__* levels; } ;
struct trinity_power_info {int requested_rps; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int sclk; } ;


 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 struct trinity_ps* trinity_get_ps (int *) ;

u32 trinity_dpm_get_sclk(struct radeon_device *rdev, bool low)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 struct trinity_ps *requested_state = trinity_get_ps(&pi->requested_rps);

 if (low)
  return requested_state->levels[0].sclk;
 else
  return requested_state->levels[requested_state->num_levels - 1].sclk;
}
