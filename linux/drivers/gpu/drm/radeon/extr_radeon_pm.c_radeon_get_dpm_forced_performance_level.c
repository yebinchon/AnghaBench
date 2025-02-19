
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {int flags; TYPE_2__ pm; } ;
struct drm_device {scalar_t__ switch_power_state; struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;


 scalar_t__ DRM_SWITCH_POWER_ON ;
 int PAGE_SIZE ;
 int RADEON_DPM_FORCED_LEVEL_AUTO ;
 int RADEON_DPM_FORCED_LEVEL_LOW ;
 int RADEON_IS_PX ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t radeon_get_dpm_forced_performance_level(struct device *dev,
             struct device_attribute *attr,
             char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct radeon_device *rdev = ddev->dev_private;
 enum radeon_dpm_forced_level level = rdev->pm.dpm.forced_level;

 if ((rdev->flags & RADEON_IS_PX) &&
      (ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return snprintf(buf, PAGE_SIZE, "off\n");

 return snprintf(buf, PAGE_SIZE, "%s\n",
   (level == RADEON_DPM_FORCED_LEVEL_AUTO) ? "auto" :
   (level == RADEON_DPM_FORCED_LEVEL_LOW) ? "low" : "high");
}
