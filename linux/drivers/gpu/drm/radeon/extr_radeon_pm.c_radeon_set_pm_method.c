
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pm_method; int dynpm_idle_work; int mutex; int dynpm_planned_action; int dynpm_state; } ;
struct radeon_device {int flags; TYPE_1__ pm; } ;
struct drm_device {scalar_t__ switch_power_state; struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ DRM_SWITCH_POWER_ON ;
 int DYNPM_ACTION_DEFAULT ;
 int DYNPM_ACTION_NONE ;
 int DYNPM_STATE_DISABLED ;
 int DYNPM_STATE_PAUSED ;
 size_t EINVAL ;
 scalar_t__ PM_METHOD_DPM ;
 scalar_t__ PM_METHOD_DYNPM ;
 scalar_t__ PM_METHOD_PROFILE ;
 int RADEON_IS_PX ;
 int cancel_delayed_work_sync (int *) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static ssize_t radeon_set_pm_method(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct radeon_device *rdev = ddev->dev_private;


 if ((rdev->flags & RADEON_IS_PX) &&
      (ddev->switch_power_state != DRM_SWITCH_POWER_ON)) {
  count = -EINVAL;
  goto fail;
 }


 if (rdev->pm.pm_method == PM_METHOD_DPM) {
  count = -EINVAL;
  goto fail;
 }

 if (strncmp("dynpm", buf, strlen("dynpm")) == 0) {
  mutex_lock(&rdev->pm.mutex);
  rdev->pm.pm_method = PM_METHOD_DYNPM;
  rdev->pm.dynpm_state = DYNPM_STATE_PAUSED;
  rdev->pm.dynpm_planned_action = DYNPM_ACTION_DEFAULT;
  mutex_unlock(&rdev->pm.mutex);
 } else if (strncmp("profile", buf, strlen("profile")) == 0) {
  mutex_lock(&rdev->pm.mutex);

  rdev->pm.dynpm_state = DYNPM_STATE_DISABLED;
  rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;
  rdev->pm.pm_method = PM_METHOD_PROFILE;
  mutex_unlock(&rdev->pm.mutex);
  cancel_delayed_work_sync(&rdev->pm.dynpm_idle_work);
 } else {
  count = -EINVAL;
  goto fail;
 }
 radeon_pm_compute_clocks(rdev);
fail:
 return count;
}
