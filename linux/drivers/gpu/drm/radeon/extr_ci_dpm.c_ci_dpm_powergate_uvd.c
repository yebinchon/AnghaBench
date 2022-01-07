
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {int uvd_power_gated; } ;


 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 int ci_update_uvd_dpm (struct radeon_device*,int) ;

void ci_dpm_powergate_uvd(struct radeon_device *rdev, bool gate)
{
 struct ci_power_info *pi = ci_get_pi(rdev);

 if (pi->uvd_power_gated == gate)
  return;

 pi->uvd_power_gated = gate;

 ci_update_uvd_dpm(rdev, gate);
}
