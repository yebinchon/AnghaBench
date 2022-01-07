
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_power_states; int power_state; int mutex; } ;
struct radeon_device {TYPE_1__ pm; int dev; } ;


 int dev_attr_power_dpm_force_performance_level ;
 int dev_attr_power_dpm_state ;
 int dev_attr_power_method ;
 int dev_attr_power_profile ;
 int device_remove_file (int ,int *) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_dpm_disable (struct radeon_device*) ;
 int radeon_dpm_fini (struct radeon_device*) ;
 int radeon_hwmon_fini (struct radeon_device*) ;

__attribute__((used)) static void radeon_pm_fini_dpm(struct radeon_device *rdev)
{
 if (rdev->pm.num_power_states > 1) {
  mutex_lock(&rdev->pm.mutex);
  radeon_dpm_disable(rdev);
  mutex_unlock(&rdev->pm.mutex);

  device_remove_file(rdev->dev, &dev_attr_power_dpm_state);
  device_remove_file(rdev->dev, &dev_attr_power_dpm_force_performance_level);

  device_remove_file(rdev->dev, &dev_attr_power_profile);
  device_remove_file(rdev->dev, &dev_attr_power_method);
 }
 radeon_dpm_fini(rdev);

 radeon_hwmon_fini(rdev);
 kfree(rdev->pm.power_state);
}
