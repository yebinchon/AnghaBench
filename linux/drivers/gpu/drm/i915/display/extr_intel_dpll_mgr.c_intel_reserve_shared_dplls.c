
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct intel_dpll_mgr {int (* get_dplls ) (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;} ;
struct intel_crtc {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct intel_atomic_state {TYPE_1__ base; } ;
struct drm_i915_private {struct intel_dpll_mgr* dpll_mgr; } ;


 scalar_t__ WARN_ON (int) ;
 int stub1 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

bool intel_reserve_shared_dplls(struct intel_atomic_state *state,
    struct intel_crtc *crtc,
    struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll_mgr;

 if (WARN_ON(!dpll_mgr))
  return 0;

 return dpll_mgr->get_dplls(state, crtc, encoder);
}
