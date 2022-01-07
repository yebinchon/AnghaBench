
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_method; int dpm_enabled; int sysfs_initialized; int num_power_states; int mutex; } ;
struct radeon_device {TYPE_1__ pm; int dev; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ PM_METHOD_DPM ;
 int dev_attr_power_dpm_force_performance_level ;
 int dev_attr_power_dpm_state ;
 int dev_attr_power_method ;
 int dev_attr_power_profile ;
 int device_create_file (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_dpm_late_enable (struct radeon_device*) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;

int radeon_pm_late_init(struct radeon_device *rdev)
{
 int ret = 0;

 if (rdev->pm.pm_method == PM_METHOD_DPM) {
  if (rdev->pm.dpm_enabled) {
   if (!rdev->pm.sysfs_initialized) {
    ret = device_create_file(rdev->dev, &dev_attr_power_dpm_state);
    if (ret)
     DRM_ERROR("failed to create device file for dpm state\n");
    ret = device_create_file(rdev->dev, &dev_attr_power_dpm_force_performance_level);
    if (ret)
     DRM_ERROR("failed to create device file for dpm state\n");

    ret = device_create_file(rdev->dev, &dev_attr_power_profile);
    if (ret)
     DRM_ERROR("failed to create device file for power profile\n");
    ret = device_create_file(rdev->dev, &dev_attr_power_method);
    if (ret)
     DRM_ERROR("failed to create device file for power method\n");
    rdev->pm.sysfs_initialized = 1;
   }

   mutex_lock(&rdev->pm.mutex);
   ret = radeon_dpm_late_enable(rdev);
   mutex_unlock(&rdev->pm.mutex);
   if (ret) {
    rdev->pm.dpm_enabled = 0;
    DRM_ERROR("radeon_pm_late_init failed, disabling dpm\n");
   } else {



    radeon_pm_compute_clocks(rdev);
   }
  }
 } else {
  if ((rdev->pm.num_power_states > 1) &&
      (!rdev->pm.sysfs_initialized)) {

   ret = device_create_file(rdev->dev, &dev_attr_power_profile);
   if (ret)
    DRM_ERROR("failed to create device file for power profile\n");
   ret = device_create_file(rdev->dev, &dev_attr_power_method);
   if (ret)
    DRM_ERROR("failed to create device file for power method\n");
   if (!ret)
    rdev->pm.sysfs_initialized = 1;
  }
 }
 return ret;
}
