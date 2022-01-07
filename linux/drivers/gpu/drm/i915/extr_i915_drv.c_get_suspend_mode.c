
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum i915_drm_suspend_mode { ____Placeholder_i915_drm_suspend_mode } i915_drm_suspend_mode ;


 int I915_DRM_SUSPEND_HIBERNATE ;
 int I915_DRM_SUSPEND_IDLE ;
 int I915_DRM_SUSPEND_MEM ;
 scalar_t__ suspend_to_idle (struct drm_i915_private*) ;

__attribute__((used)) static enum i915_drm_suspend_mode
get_suspend_mode(struct drm_i915_private *dev_priv, bool hibernate)
{
 if (hibernate)
  return I915_DRM_SUSPEND_HIBERNATE;

 if (suspend_to_idle(dev_priv))
  return I915_DRM_SUSPEND_IDLE;

 return I915_DRM_SUSPEND_MEM;
}
