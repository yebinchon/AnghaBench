
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dpll_mgr {int (* put_dplls ) (struct intel_atomic_state*,struct intel_crtc*) ;} ;
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct intel_atomic_state {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_dpll_mgr* dpll_mgr; } ;


 int stub1 (struct intel_atomic_state*,struct intel_crtc*) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_release_shared_dplls(struct intel_atomic_state *state,
    struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll_mgr;







 if (!dpll_mgr)
  return;

 dpll_mgr->put_dplls(state, crtc);
}
