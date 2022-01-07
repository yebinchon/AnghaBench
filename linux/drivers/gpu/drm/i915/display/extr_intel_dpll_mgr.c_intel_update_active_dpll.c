
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_dpll_mgr {int (* update_active_dpll ) (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;} ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {struct intel_dpll_mgr* dpll_mgr; } ;


 scalar_t__ WARN_ON (int) ;
 int stub1 (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_update_active_dpll(struct intel_atomic_state *state,
         struct intel_crtc *crtc,
         struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 const struct intel_dpll_mgr *dpll_mgr = dev_priv->dpll_mgr;

 if (WARN_ON(!dpll_mgr))
  return;

 dpll_mgr->update_active_dpll(state, crtc, encoder);
}
