
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_atomic_state {int rps_interactive; } ;
struct drm_plane_state {int state; } ;
struct drm_plane {int dev; } ;
struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int intel_plane_unpin_fb (int ) ;
 int intel_rps_mark_interactive (struct drm_i915_private*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_atomic_state* to_intel_atomic_state (int ) ;
 int to_intel_plane_state (struct drm_plane_state*) ;

void
intel_cleanup_plane_fb(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct intel_atomic_state *intel_state =
  to_intel_atomic_state(old_state->state);
 struct drm_i915_private *dev_priv = to_i915(plane->dev);

 if (intel_state->rps_interactive) {
  intel_rps_mark_interactive(dev_priv, 0);
  intel_state->rps_interactive = 0;
 }


 mutex_lock(&dev_priv->drm.struct_mutex);
 intel_plane_unpin_fb(to_intel_plane_state(old_state));
 mutex_unlock(&dev_priv->drm.struct_mutex);
}
