
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct device {int dummy; } ;


 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int i915_drm_resume (TYPE_1__*) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static int i915_pm_resume(struct device *kdev)
{
 struct drm_i915_private *i915 = kdev_to_i915(kdev);

 if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 return i915_drm_resume(&i915->drm);
}
