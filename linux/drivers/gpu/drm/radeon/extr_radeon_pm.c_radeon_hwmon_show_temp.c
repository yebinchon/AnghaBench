
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {int flags; TYPE_2__* asic; struct drm_device* ddev; } ;
struct drm_device {scalar_t__ switch_power_state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ get_temperature; } ;
struct TYPE_4__ {TYPE_1__ pm; } ;


 scalar_t__ DRM_SWITCH_POWER_ON ;
 int EINVAL ;
 int PAGE_SIZE ;
 int RADEON_IS_PX ;
 struct radeon_device* dev_get_drvdata (struct device*) ;
 int radeon_get_temperature (struct radeon_device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t radeon_hwmon_show_temp(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct radeon_device *rdev = dev_get_drvdata(dev);
 struct drm_device *ddev = rdev->ddev;
 int temp;


 if ((rdev->flags & RADEON_IS_PX) &&
      (ddev->switch_power_state != DRM_SWITCH_POWER_ON))
  return -EINVAL;

 if (rdev->asic->pm.get_temperature)
  temp = radeon_get_temperature(rdev);
 else
  temp = 0;

 return snprintf(buf, PAGE_SIZE, "%d\n", temp);
}
