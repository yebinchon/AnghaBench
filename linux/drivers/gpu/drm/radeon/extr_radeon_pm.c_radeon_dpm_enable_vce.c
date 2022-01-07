
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vce_active; int vce_level; } ;
struct TYPE_3__ {int mutex; TYPE_2__ dpm; } ;
struct radeon_device {TYPE_1__ pm; } ;


 int RADEON_VCE_LEVEL_AC_ALL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;

void radeon_dpm_enable_vce(struct radeon_device *rdev, bool enable)
{
 if (enable) {
  mutex_lock(&rdev->pm.mutex);
  rdev->pm.dpm.vce_active = 1;

  rdev->pm.dpm.vce_level = RADEON_VCE_LEVEL_AC_ALL;
  mutex_unlock(&rdev->pm.mutex);
 } else {
  mutex_lock(&rdev->pm.mutex);
  rdev->pm.dpm.vce_active = 0;
  mutex_unlock(&rdev->pm.mutex);
 }

 radeon_pm_compute_clocks(rdev);
}
