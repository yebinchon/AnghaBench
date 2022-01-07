
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct skl_ddb_values {int dirty_pipes; } ;
struct TYPE_5__ {scalar_t__ active_changed; int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_3__ base; } ;
struct intel_atomic_state {struct skl_ddb_values wm_results; } ;
struct TYPE_4__ {int wm_mutex; } ;
struct drm_i915_private {TYPE_1__ wm; } ;
struct drm_device {int dummy; } ;


 int drm_crtc_mask (TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skl_atomic_update_crtc_wm (struct intel_atomic_state*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void skl_initial_wm(struct intel_atomic_state *state,
      struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_device *dev = intel_crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct skl_ddb_values *results = &state->wm_results;

 if ((results->dirty_pipes & drm_crtc_mask(&intel_crtc->base)) == 0)
  return;

 mutex_lock(&dev_priv->wm.wm_mutex);

 if (crtc_state->base.active_changed)
  skl_atomic_update_crtc_wm(state, crtc_state);

 mutex_unlock(&dev_priv->wm.wm_mutex);
}
