
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_method; scalar_t__ dynpm_state; int dynpm_idle_work; int mutex; } ;
struct radeon_device {TYPE_1__ pm; } ;


 scalar_t__ DYNPM_STATE_ACTIVE ;
 scalar_t__ DYNPM_STATE_SUSPENDED ;
 scalar_t__ PM_METHOD_DYNPM ;
 int cancel_delayed_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void radeon_pm_suspend_old(struct radeon_device *rdev)
{
 mutex_lock(&rdev->pm.mutex);
 if (rdev->pm.pm_method == PM_METHOD_DYNPM) {
  if (rdev->pm.dynpm_state == DYNPM_STATE_ACTIVE)
   rdev->pm.dynpm_state = DYNPM_STATE_SUSPENDED;
 }
 mutex_unlock(&rdev->pm.mutex);

 cancel_delayed_work_sync(&rdev->pm.dynpm_idle_work);
}
