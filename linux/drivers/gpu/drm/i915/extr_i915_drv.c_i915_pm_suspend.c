
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct device {int dummy; } ;


 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int ENODEV ;
 int dev_err (struct device*,char*) ;
 int i915_drm_suspend (TYPE_1__*) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static int i915_pm_suspend(struct device *kdev)
{
 struct drm_i915_private *i915 = kdev_to_i915(kdev);

 if (!i915) {
  dev_err(kdev, "DRM not initialized, aborting suspend.\n");
  return -ENODEV;
 }

 if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 return i915_drm_suspend(&i915->drm);
}
