
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {int dummy; } ;
struct TYPE_2__ {int wrpll; } ;
struct intel_crtc_state {int port_clock; TYPE_1__ dpll_hw_state; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;


 int DPLL_ID_WRPLL1 ;
 int DPLL_ID_WRPLL2 ;
 int WRPLL_DIVIDER_FEEDBACK (unsigned int) ;
 int WRPLL_DIVIDER_POST (unsigned int) ;
 int WRPLL_DIVIDER_REFERENCE (unsigned int) ;
 int WRPLL_PLL_ENABLE ;
 int WRPLL_REF_LCPLL ;
 int hsw_ddi_calculate_wrpll (int,unsigned int*,unsigned int*,unsigned int*) ;
 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 struct intel_shared_dpll* intel_find_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static struct intel_shared_dpll *
hsw_ddi_hdmi_get_dpll(struct intel_atomic_state *state,
        struct intel_crtc *crtc)
{
 struct intel_crtc_state *crtc_state =
  intel_atomic_get_new_crtc_state(state, crtc);
 struct intel_shared_dpll *pll;
 u32 val;
 unsigned int p, n2, r2;

 hsw_ddi_calculate_wrpll(crtc_state->port_clock * 1000, &r2, &n2, &p);

 val = WRPLL_PLL_ENABLE | WRPLL_REF_LCPLL |
       WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
       WRPLL_DIVIDER_POST(p);

 crtc_state->dpll_hw_state.wrpll = val;

 pll = intel_find_shared_dpll(state, crtc,
         &crtc_state->dpll_hw_state,
         DPLL_ID_WRPLL1, DPLL_ID_WRPLL2);

 if (!pll)
  return ((void*)0);

 return pll;
}
