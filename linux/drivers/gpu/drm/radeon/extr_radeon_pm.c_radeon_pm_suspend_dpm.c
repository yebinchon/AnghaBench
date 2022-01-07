
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boot_ps; int requested_ps; int current_ps; } ;
struct TYPE_4__ {int dpm_enabled; int mutex; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_dpm_disable (struct radeon_device*) ;

__attribute__((used)) static void radeon_pm_suspend_dpm(struct radeon_device *rdev)
{
 mutex_lock(&rdev->pm.mutex);

 radeon_dpm_disable(rdev);

 rdev->pm.dpm.current_ps = rdev->pm.dpm.requested_ps = rdev->pm.dpm.boot_ps;
 rdev->pm.dpm_enabled = 0;
 mutex_unlock(&rdev->pm.mutex);
}
