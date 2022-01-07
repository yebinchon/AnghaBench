
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int dummy; } ;
struct bxt_clk_div {int dummy; } ;


 int bxt_ddi_hdmi_pll_dividers (struct intel_crtc_state*,struct bxt_clk_div*) ;
 int bxt_ddi_set_dpll_hw_state (struct intel_crtc_state*,struct bxt_clk_div*) ;

__attribute__((used)) static bool
bxt_ddi_hdmi_set_dpll_hw_state(struct intel_crtc_state *crtc_state)
{
 struct bxt_clk_div clk_div = {};

 bxt_ddi_hdmi_pll_dividers(crtc_state, &clk_div);

 return bxt_ddi_set_dpll_hw_state(crtc_state, &clk_div);
}
