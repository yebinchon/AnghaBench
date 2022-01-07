
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ thermal_active; } ;
struct TYPE_8__ {int mutex; TYPE_3__ dpm; } ;
struct radeon_device {int flags; TYPE_4__ pm; TYPE_2__* asic; } ;
struct drm_device {scalar_t__ switch_power_state; struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;
struct TYPE_5__ {scalar_t__ force_performance_level; } ;
struct TYPE_6__ {TYPE_1__ dpm; } ;


 scalar_t__ DRM_SWITCH_POWER_ON ;
 size_t EINVAL ;
 int RADEON_DPM_FORCED_LEVEL_AUTO ;
 int RADEON_DPM_FORCED_LEVEL_HIGH ;
 int RADEON_DPM_FORCED_LEVEL_LOW ;
 int RADEON_IS_PX ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_dpm_force_performance_level (struct radeon_device*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static ssize_t radeon_set_dpm_forced_performance_level(struct device *dev,
             struct device_attribute *attr,
             const char *buf,
             size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct radeon_device *rdev = ddev->dev_private;
 enum radeon_dpm_forced_level level;
 int ret = 0;


 if ((rdev->flags & RADEON_IS_PX) &&
      (ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return -EINVAL;

 mutex_lock(&rdev->pm.mutex);
 if (strncmp("low", buf, strlen("low")) == 0) {
  level = RADEON_DPM_FORCED_LEVEL_LOW;
 } else if (strncmp("high", buf, strlen("high")) == 0) {
  level = RADEON_DPM_FORCED_LEVEL_HIGH;
 } else if (strncmp("auto", buf, strlen("auto")) == 0) {
  level = RADEON_DPM_FORCED_LEVEL_AUTO;
 } else {
  count = -EINVAL;
  goto fail;
 }
 if (rdev->asic->dpm.force_performance_level) {
  if (rdev->pm.dpm.thermal_active) {
   count = -EINVAL;
   goto fail;
  }
  ret = radeon_dpm_force_performance_level(rdev, level);
  if (ret)
   count = -EINVAL;
 }
fail:
 mutex_unlock(&rdev->pm.mutex);

 return count;
}
