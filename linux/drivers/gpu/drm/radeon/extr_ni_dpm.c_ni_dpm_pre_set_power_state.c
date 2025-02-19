
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct evergreen_power_info {int requested_rps; } ;


 struct evergreen_power_info* evergreen_get_pi (struct radeon_device*) ;
 int ni_apply_state_adjust_rules (struct radeon_device*,int *) ;
 int ni_update_requested_ps (struct radeon_device*,struct radeon_ps*) ;

int ni_dpm_pre_set_power_state(struct radeon_device *rdev)
{
 struct evergreen_power_info *eg_pi = evergreen_get_pi(rdev);
 struct radeon_ps requested_ps = *rdev->pm.dpm.requested_ps;
 struct radeon_ps *new_ps = &requested_ps;

 ni_update_requested_ps(rdev, new_ps);

 ni_apply_state_adjust_rules(rdev, &eg_pi->requested_rps);

 return 0;
}
