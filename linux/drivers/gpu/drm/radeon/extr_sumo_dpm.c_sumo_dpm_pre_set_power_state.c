
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sumo_power_info {int current_rps; int requested_rps; scalar_t__ enable_dynamic_patch_ps; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int sumo_apply_state_adjust_rules (struct radeon_device*,int *,int *) ;
 struct sumo_power_info* sumo_get_pi (struct radeon_device*) ;
 int sumo_update_requested_ps (struct radeon_device*,struct radeon_ps*) ;

int sumo_dpm_pre_set_power_state(struct radeon_device *rdev)
{
 struct sumo_power_info *pi = sumo_get_pi(rdev);
 struct radeon_ps requested_ps = *rdev->pm.dpm.requested_ps;
 struct radeon_ps *new_ps = &requested_ps;

 sumo_update_requested_ps(rdev, new_ps);

 if (pi->enable_dynamic_patch_ps)
  sumo_apply_state_adjust_rules(rdev,
           &pi->requested_rps,
           &pi->current_rps);

 return 0;
}
