
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int dpll_hw_state; int shared_dpll; struct icl_port_dpll* icl_port_dplls; } ;
struct icl_port_dpll {int hw_state; int pll; } ;
typedef enum icl_port_dpll_id { ____Placeholder_icl_port_dpll_id } icl_port_dpll_id ;



void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
         enum icl_port_dpll_id port_dpll_id)
{
 struct icl_port_dpll *port_dpll =
  &crtc_state->icl_port_dplls[port_dpll_id];

 crtc_state->shared_dpll = port_dpll->pll;
 crtc_state->dpll_hw_state = port_dpll->hw_state;
}
