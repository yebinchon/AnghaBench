
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_dpll_state {int crtc_mask; } ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_crtc {int pipe; } ;
struct intel_atomic_state {int base; } ;
struct TYPE_2__ {size_t id; } ;


 struct intel_shared_dpll_state* intel_atomic_get_shared_dpll_state (int *) ;

__attribute__((used)) static void intel_unreference_shared_dpll(struct intel_atomic_state *state,
       const struct intel_crtc *crtc,
       const struct intel_shared_dpll *pll)
{
 struct intel_shared_dpll_state *shared_dpll;

 shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);
 shared_dpll[pll->info->id].crtc_mask &= ~(1 << crtc->pipe);
}
