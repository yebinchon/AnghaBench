
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crtc; } ;
struct intel_crtc_state {int port_clock; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct dpll {int m1; int m2; int vco; int n; int p2; int p1; } ;
struct bxt_clk_div {int m2_int; int m2_frac; int m2_frac_en; int vco; int n; int p2; int p1; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 int WARN_ON (int) ;
 int bxt_find_best_dpll (struct intel_crtc_state*,struct dpll*) ;
 int pipe_name (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static bool
bxt_ddi_hdmi_pll_dividers(struct intel_crtc_state *crtc_state,
     struct bxt_clk_div *clk_div)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct dpll best_clock;






 if (!bxt_find_best_dpll(crtc_state, &best_clock)) {
  DRM_DEBUG_DRIVER("no PLL dividers found for clock %d pipe %c\n",
     crtc_state->port_clock,
     pipe_name(crtc->pipe));
  return 0;
 }

 clk_div->p1 = best_clock.p1;
 clk_div->p2 = best_clock.p2;
 WARN_ON(best_clock.m1 != 2);
 clk_div->n = best_clock.n;
 clk_div->m2_int = best_clock.m2 >> 22;
 clk_div->m2_frac = best_clock.m2 & ((1 << 22) - 1);
 clk_div->m2_frac_en = clk_div->m2_frac != 0;

 clk_div->vco = best_clock.vco;

 return 1;
}
