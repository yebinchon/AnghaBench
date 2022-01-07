
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_shared_dpll {int dummy; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {struct intel_shared_dpll* shared_dpll; int dpll_hw_state; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;


 int DPLL_ID_SKL_DPLL0 ;
 int DPLL_ID_SKL_DPLL1 ;
 int DPLL_ID_SKL_DPLL3 ;
 int DRM_DEBUG_KMS (char*) ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_HDMI ;
 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 struct intel_shared_dpll* intel_find_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,int *,int ,int ) ;
 int intel_reference_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,struct intel_shared_dpll*,int *) ;
 int skl_ddi_dp_set_dpll_hw_state (struct intel_crtc_state*) ;
 int skl_ddi_hdmi_pll_dividers (struct intel_crtc_state*) ;

__attribute__((used)) static bool skl_get_dpll(struct intel_atomic_state *state,
    struct intel_crtc *crtc,
    struct intel_encoder *encoder)
{
 struct intel_crtc_state *crtc_state =
  intel_atomic_get_new_crtc_state(state, crtc);
 struct intel_shared_dpll *pll;
 bool bret;

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
  bret = skl_ddi_hdmi_pll_dividers(crtc_state);
  if (!bret) {
   DRM_DEBUG_KMS("Could not get HDMI pll dividers.\n");
   return 0;
  }
 } else if (intel_crtc_has_dp_encoder(crtc_state)) {
  bret = skl_ddi_dp_set_dpll_hw_state(crtc_state);
  if (!bret) {
   DRM_DEBUG_KMS("Could not set DP dpll HW state.\n");
   return 0;
  }
 } else {
  return 0;
 }

 if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
  pll = intel_find_shared_dpll(state, crtc,
          &crtc_state->dpll_hw_state,
          DPLL_ID_SKL_DPLL0,
          DPLL_ID_SKL_DPLL0);
 else
  pll = intel_find_shared_dpll(state, crtc,
          &crtc_state->dpll_hw_state,
          DPLL_ID_SKL_DPLL1,
          DPLL_ID_SKL_DPLL3);
 if (!pll)
  return 0;

 intel_reference_shared_dpll(state, crtc,
        pll, &crtc_state->dpll_hw_state);

 crtc_state->shared_dpll = pll;

 return 1;
}
