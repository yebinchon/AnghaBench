
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int port; } ;
struct intel_crtc_state {struct icl_port_dpll* icl_port_dplls; } ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct icl_port_dpll {int hw_state; int pll; } ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DPLL_ID_EHL_DPLL4 ;
 int DPLL_ID_ICL_DPLL0 ;
 int DPLL_ID_ICL_DPLL1 ;
 int DRM_DEBUG_KMS (char*,...) ;
 size_t ICL_PORT_DPLL_DEFAULT ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int PORT_A ;
 int icl_calc_dpll_state (struct intel_crtc_state*,struct intel_encoder*,int *) ;
 int icl_update_active_dpll (struct intel_atomic_state*,struct intel_crtc*,struct intel_encoder*) ;
 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 int intel_find_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,int *,int ,int ) ;
 int intel_reference_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,int ,int *) ;
 int port_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool icl_get_combo_phy_dpll(struct intel_atomic_state *state,
       struct intel_crtc *crtc,
       struct intel_encoder *encoder)
{
 struct intel_crtc_state *crtc_state =
  intel_atomic_get_new_crtc_state(state, crtc);
 struct icl_port_dpll *port_dpll =
  &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum port port = encoder->port;
 bool has_dpll4 = 0;

 if (!icl_calc_dpll_state(crtc_state, encoder, &port_dpll->hw_state)) {
  DRM_DEBUG_KMS("Could not calculate combo PHY PLL state.\n");

  return 0;
 }

 if (IS_ELKHARTLAKE(dev_priv) && port != PORT_A)
  has_dpll4 = 1;

 port_dpll->pll = intel_find_shared_dpll(state, crtc,
      &port_dpll->hw_state,
      DPLL_ID_ICL_DPLL0,
      has_dpll4 ? DPLL_ID_EHL_DPLL4
         : DPLL_ID_ICL_DPLL1);
 if (!port_dpll->pll) {
  DRM_DEBUG_KMS("No combo PHY PLL found for port %c\n",
         port_name(encoder->port));
  return 0;
 }

 intel_reference_shared_dpll(state, crtc,
        port_dpll->pll, &port_dpll->hw_state);

 icl_update_active_dpll(state, crtc, encoder);

 return 1;
}
