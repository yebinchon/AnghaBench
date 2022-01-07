
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_device {int dummy; } ;
struct kv_ps {int num_levels; TYPE_1__* levels; } ;
struct kv_power_info {int requested_rps; } ;
struct TYPE_2__ {int sclk; } ;


 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 struct kv_ps* kv_get_ps (int *) ;

u32 kv_dpm_get_sclk(struct radeon_device *rdev, bool low)
{
 struct kv_power_info *pi = kv_get_pi(rdev);
 struct kv_ps *requested_state = kv_get_ps(&pi->requested_rps);

 if (low)
  return requested_state->levels[0].sclk;
 else
  return requested_state->levels[requested_state->num_levels - 1].sclk;
}
