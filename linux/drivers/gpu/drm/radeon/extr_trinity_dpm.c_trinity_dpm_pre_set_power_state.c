
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trinity_power_info {int current_rps; int requested_rps; } ;
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int trinity_apply_state_adjust_rules (struct radeon_device*,int *,int *) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_update_requested_ps (struct radeon_device*,struct radeon_ps*) ;

int trinity_dpm_pre_set_power_state(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 struct radeon_ps requested_ps = *rdev->pm.dpm.requested_ps;
 struct radeon_ps *new_ps = &requested_ps;

 trinity_update_requested_ps(rdev, new_ps);

 trinity_apply_state_adjust_rules(rdev,
      &pi->requested_rps,
      &pi->current_rps);

 return 0;
}
