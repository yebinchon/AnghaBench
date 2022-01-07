
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_plane_state {int dummy; } ;
struct intel_fbc {int flip_pending; int lock; struct intel_crtc* crtc; int enabled; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int fbc_supported (struct drm_i915_private*) ;
 int intel_fbc_deactivate (struct drm_i915_private*,char const*) ;
 int intel_fbc_update_state_cache (struct intel_crtc*,struct intel_crtc_state*,struct intel_plane_state*) ;
 int multiple_pipes_ok (struct intel_crtc*,struct intel_plane_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_fbc_pre_update(struct intel_crtc *crtc,
     struct intel_crtc_state *crtc_state,
     struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_fbc *fbc = &dev_priv->fbc;
 const char *reason = "update pending";

 if (!fbc_supported(dev_priv))
  return;

 mutex_lock(&fbc->lock);

 if (!multiple_pipes_ok(crtc, plane_state)) {
  reason = "more than one pipe active";
  goto deactivate;
 }

 if (!fbc->enabled || fbc->crtc != crtc)
  goto unlock;

 intel_fbc_update_state_cache(crtc, crtc_state, plane_state);
 fbc->flip_pending = 1;

deactivate:
 intel_fbc_deactivate(dev_priv, reason);
unlock:
 mutex_unlock(&fbc->lock);
}
