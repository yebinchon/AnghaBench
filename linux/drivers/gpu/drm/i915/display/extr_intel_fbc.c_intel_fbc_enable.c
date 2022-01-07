
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_plane_state {int dummy; } ;
struct intel_fbc {int enabled; int active; char* no_fbc_reason; int lock; struct intel_crtc* crtc; } ;
struct intel_crtc_state {int enable_fbc; } ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {struct intel_fbc fbc; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int WARN_ON (int) ;
 int fbc_supported (struct drm_i915_private*) ;
 scalar_t__ intel_fbc_alloc_cfb (struct intel_crtc*) ;
 int intel_fbc_update_state_cache (struct intel_crtc*,struct intel_crtc_state*,struct intel_plane_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pipe_name (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_fbc_enable(struct intel_crtc *crtc,
        struct intel_crtc_state *crtc_state,
        struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_fbc *fbc = &dev_priv->fbc;

 if (!fbc_supported(dev_priv))
  return;

 mutex_lock(&fbc->lock);

 if (fbc->enabled) {
  WARN_ON(fbc->crtc == ((void*)0));
  if (fbc->crtc == crtc) {
   WARN_ON(!crtc_state->enable_fbc);
   WARN_ON(fbc->active);
  }
  goto out;
 }

 if (!crtc_state->enable_fbc)
  goto out;

 WARN_ON(fbc->active);
 WARN_ON(fbc->crtc != ((void*)0));

 intel_fbc_update_state_cache(crtc, crtc_state, plane_state);
 if (intel_fbc_alloc_cfb(crtc)) {
  fbc->no_fbc_reason = "not enough stolen memory";
  goto out;
 }

 DRM_DEBUG_KMS("Enabling FBC on pipe %c\n", pipe_name(crtc->pipe));
 fbc->no_fbc_reason = "FBC enabled but not active yet\n";

 fbc->enabled = 1;
 fbc->crtc = crtc;
out:
 mutex_unlock(&fbc->lock);
}
