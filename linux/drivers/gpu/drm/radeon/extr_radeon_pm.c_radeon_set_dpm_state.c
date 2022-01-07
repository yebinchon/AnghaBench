
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_state; } ;
struct TYPE_4__ {int mutex; TYPE_1__ dpm; } ;
struct radeon_device {int flags; TYPE_2__ pm; } ;
struct drm_device {scalar_t__ switch_power_state; struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 scalar_t__ DRM_SWITCH_POWER_ON ;
 size_t EINVAL ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 int POWER_STATE_TYPE_PERFORMANCE ;
 int RADEON_IS_PX ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_pm_compute_clocks (struct radeon_device*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static ssize_t radeon_set_dpm_state(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct radeon_device *rdev = ddev->dev_private;

 mutex_lock(&rdev->pm.mutex);
 if (strncmp("battery", buf, strlen("battery")) == 0)
  rdev->pm.dpm.user_state = POWER_STATE_TYPE_BATTERY;
 else if (strncmp("balanced", buf, strlen("balanced")) == 0)
  rdev->pm.dpm.user_state = POWER_STATE_TYPE_BALANCED;
 else if (strncmp("performance", buf, strlen("performance")) == 0)
  rdev->pm.dpm.user_state = POWER_STATE_TYPE_PERFORMANCE;
 else {
  mutex_unlock(&rdev->pm.mutex);
  count = -EINVAL;
  goto fail;
 }
 mutex_unlock(&rdev->pm.mutex);


 if (!(rdev->flags & RADEON_IS_PX) ||
     (ddev->switch_power_state == DRM_SWITCH_POWER_ON))
  radeon_pm_compute_clocks(rdev);

fail:
 return count;
}
