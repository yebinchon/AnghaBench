
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trinity_power_info {scalar_t__ enable_bapm; } ;
struct radeon_device {int dummy; } ;


 int trinity_acquire_mutex (struct radeon_device*) ;
 int trinity_dpm_bapm_enable (struct radeon_device*,int) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 int trinity_release_mutex (struct radeon_device*) ;

void trinity_dpm_enable_bapm(struct radeon_device *rdev, bool enable)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);

 if (pi->enable_bapm) {
  trinity_acquire_mutex(rdev);
  trinity_dpm_bapm_enable(rdev, enable);
  trinity_release_mutex(rdev);
 }
}
