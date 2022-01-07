
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {struct drm_atomic_state* modeset_restore_state; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int PTR_ERR_OR_ZERO (struct drm_atomic_state*) ;
 struct drm_atomic_state* drm_atomic_helper_suspend (struct drm_device*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

int intel_display_suspend(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_atomic_state *state;
 int ret;

 state = drm_atomic_helper_suspend(dev);
 ret = PTR_ERR_OR_ZERO(state);
 if (ret)
  DRM_ERROR("Suspending crtc's failed with %i\n", ret);
 else
  dev_priv->modeset_restore_state = state;
 return ret;
}
