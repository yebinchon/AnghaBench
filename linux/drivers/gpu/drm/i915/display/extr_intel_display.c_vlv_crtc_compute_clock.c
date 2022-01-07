
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_limit {int dummy; } ;
struct intel_crtc_state {int dpll; int port_clock; int clock_set; int dpll_hw_state; } ;
struct intel_crtc {int dummy; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 struct intel_limit intel_limits_vlv ;
 int memset (int *,int ,int) ;
 int vlv_compute_dpll (struct intel_crtc*,struct intel_crtc_state*) ;
 int vlv_find_best_dpll (struct intel_limit const*,struct intel_crtc_state*,int ,int,int *,int *) ;

__attribute__((used)) static int vlv_crtc_compute_clock(struct intel_crtc *crtc,
      struct intel_crtc_state *crtc_state)
{
 int refclk = 100000;
 const struct intel_limit *limit = &intel_limits_vlv;

 memset(&crtc_state->dpll_hw_state, 0,
        sizeof(crtc_state->dpll_hw_state));

 if (!crtc_state->clock_set &&
     !vlv_find_best_dpll(limit, crtc_state, crtc_state->port_clock,
    refclk, ((void*)0), &crtc_state->dpll)) {
  DRM_ERROR("Couldn't find PLL settings for mode!\n");
  return -EINVAL;
 }

 vlv_compute_dpll(crtc, crtc_state);

 return 0;
}
