
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 scalar_t__ DRM_SWITCH_POWER_OFF ;
 int i915_drm_resume (TYPE_1__*) ;
 int i915_drm_resume_early (TYPE_1__*) ;

__attribute__((used)) static int i915_resume_switcheroo(struct drm_i915_private *i915)
{
 int ret;

 if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
  return 0;

 ret = i915_drm_resume_early(&i915->drm);
 if (ret)
  return ret;

 return i915_drm_resume(&i915->drm);
}
