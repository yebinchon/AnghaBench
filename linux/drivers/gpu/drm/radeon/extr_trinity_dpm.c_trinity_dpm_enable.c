
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trinity_power_info {scalar_t__ enable_auto_thermal_throttling; } ;
struct TYPE_3__ {int boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int EINVAL ;
 int sumo_program_vc (struct radeon_device*,int) ;
 int trinity_acquire_mutex (struct radeon_device*) ;
 int trinity_dpm_bapm_enable (struct radeon_device*,int) ;
 scalar_t__ trinity_dpm_enabled (struct radeon_device*) ;
 int trinity_enable_att (struct radeon_device*) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_program_bootup_state (struct radeon_device*) ;
 int trinity_program_sclk_dpm (struct radeon_device*) ;
 int trinity_program_ttt (struct radeon_device*) ;
 int trinity_release_mutex (struct radeon_device*) ;
 int trinity_start_am (struct radeon_device*) ;
 int trinity_start_dpm (struct radeon_device*) ;
 int trinity_update_current_ps (struct radeon_device*,int ) ;
 int trinity_wait_for_dpm_enabled (struct radeon_device*) ;

int trinity_dpm_enable(struct radeon_device *rdev)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 trinity_acquire_mutex(rdev);

 if (trinity_dpm_enabled(rdev)) {
  trinity_release_mutex(rdev);
  return -EINVAL;
 }

 trinity_program_bootup_state(rdev);
 sumo_program_vc(rdev, 0x00C00033);
 trinity_start_am(rdev);
 if (pi->enable_auto_thermal_throttling) {
  trinity_program_ttt(rdev);
  trinity_enable_att(rdev);
 }
 trinity_program_sclk_dpm(rdev);
 trinity_start_dpm(rdev);
 trinity_wait_for_dpm_enabled(rdev);
 trinity_dpm_bapm_enable(rdev, 0);
 trinity_release_mutex(rdev);

 trinity_update_current_ps(rdev, rdev->pm.dpm.boot_ps);

 return 0;
}
