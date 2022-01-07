
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sd; scalar_t__ hd; int uvd_active; int state; } ;
struct TYPE_8__ {int mutex; TYPE_3__ dpm; } ;
struct radeon_device {TYPE_4__ pm; TYPE_2__* asic; } ;
typedef enum radeon_pm_state_type { ____Placeholder_radeon_pm_state_type } radeon_pm_state_type ;
struct TYPE_5__ {scalar_t__ powergate_uvd; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;


 int POWER_STATE_TYPE_INTERNAL_UVD ;
 int POWER_STATE_TYPE_INTERNAL_UVD_HD ;
 int POWER_STATE_TYPE_INTERNAL_UVD_HD2 ;
 int POWER_STATE_TYPE_INTERNAL_UVD_SD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_dpm_powergate_uvd (struct radeon_device*,int) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;

void radeon_dpm_enable_uvd(struct radeon_device *rdev, bool enable)
{
 enum radeon_pm_state_type dpm_state;

 if (rdev->asic->dpm.powergate_uvd) {
  mutex_lock(&rdev->pm.mutex);


  enable |= rdev->pm.dpm.sd > 0;
  enable |= rdev->pm.dpm.hd > 0;

  radeon_dpm_powergate_uvd(rdev, !enable);
  mutex_unlock(&rdev->pm.mutex);
 } else {
  if (enable) {
   mutex_lock(&rdev->pm.mutex);
   rdev->pm.dpm.uvd_active = 1;
    dpm_state = POWER_STATE_TYPE_INTERNAL_UVD;
   rdev->pm.dpm.state = dpm_state;
   mutex_unlock(&rdev->pm.mutex);
  } else {
   mutex_lock(&rdev->pm.mutex);
   rdev->pm.dpm.uvd_active = 0;
   mutex_unlock(&rdev->pm.mutex);
  }

  radeon_pm_compute_clocks(rdev);
 }
}
