
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_shared_dpll {TYPE_3__* info; } ;
struct intel_encoder {scalar_t__ port; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; int dpll_hw_state; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int name; TYPE_1__ base; int dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_6__ {int name; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ) ;
 int INTEL_OUTPUT_HDMI ;
 int bxt_ddi_dp_set_dpll_hw_state (struct intel_crtc_state*) ;
 int bxt_ddi_hdmi_set_dpll_hw_state (struct intel_crtc_state*) ;
 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 struct intel_shared_dpll* intel_get_shared_dpll_by_id (struct drm_i915_private*,int) ;
 int intel_reference_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,struct intel_shared_dpll*,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool bxt_get_dpll(struct intel_atomic_state *state,
    struct intel_crtc *crtc,
    struct intel_encoder *encoder)
{
 struct intel_crtc_state *crtc_state =
  intel_atomic_get_new_crtc_state(state, crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_shared_dpll *pll;
 enum intel_dpll_id id;

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
     !bxt_ddi_hdmi_set_dpll_hw_state(crtc_state))
  return 0;

 if (intel_crtc_has_dp_encoder(crtc_state) &&
     !bxt_ddi_dp_set_dpll_hw_state(crtc_state))
  return 0;


 id = (enum intel_dpll_id) encoder->port;
 pll = intel_get_shared_dpll_by_id(dev_priv, id);

 DRM_DEBUG_KMS("[CRTC:%d:%s] using pre-allocated %s\n",
        crtc->base.base.id, crtc->base.name, pll->info->name);

 intel_reference_shared_dpll(state, crtc,
        pll, &crtc_state->dpll_hw_state);

 crtc_state->shared_dpll = pll;

 return 1;
}
