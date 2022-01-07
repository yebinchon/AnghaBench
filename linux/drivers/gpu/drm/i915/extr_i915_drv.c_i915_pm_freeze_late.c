
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct device {int dummy; } ;


 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int i915_drm_suspend_late (TYPE_1__*,int) ;
 int i915_gem_freeze_late (struct drm_i915_private*) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static int i915_pm_freeze_late(struct device *kdev)
{
 struct drm_i915_private *i915 = kdev_to_i915(kdev);
 int ret;

 if (i915->drm.switch_power_state != DRM_SWITCH_POWER_OFF) {
  ret = i915_drm_suspend_late(&i915->drm, 1);
  if (ret)
   return ret;
 }

 ret = i915_gem_freeze_late(i915);
 if (ret)
  return ret;

 return 0;
}
