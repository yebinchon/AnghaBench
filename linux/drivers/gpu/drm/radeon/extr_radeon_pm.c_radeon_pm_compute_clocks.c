
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_method; } ;
struct radeon_device {TYPE_1__ pm; } ;


 scalar_t__ PM_METHOD_DPM ;
 int radeon_pm_compute_clocks_dpm (struct radeon_device*) ;
 int radeon_pm_compute_clocks_old (struct radeon_device*) ;

void radeon_pm_compute_clocks(struct radeon_device *rdev)
{
 if (rdev->pm.pm_method == PM_METHOD_DPM)
  radeon_pm_compute_clocks_dpm(rdev);
 else
  radeon_pm_compute_clocks_old(rdev);
}
