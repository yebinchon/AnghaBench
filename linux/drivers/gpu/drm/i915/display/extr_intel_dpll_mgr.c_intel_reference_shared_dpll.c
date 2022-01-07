
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dpll_hw_state {int dummy; } ;
struct intel_shared_dpll_state {int crtc_mask; struct intel_dpll_hw_state hw_state; } ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_crtc {int pipe; } ;
struct intel_atomic_state {int base; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; int name; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ) ;
 struct intel_shared_dpll_state* intel_atomic_get_shared_dpll_state (int *) ;
 int pipe_name (int) ;

__attribute__((used)) static void
intel_reference_shared_dpll(struct intel_atomic_state *state,
       const struct intel_crtc *crtc,
       const struct intel_shared_dpll *pll,
       const struct intel_dpll_hw_state *pll_state)
{
 struct intel_shared_dpll_state *shared_dpll;
 const enum intel_dpll_id id = pll->info->id;

 shared_dpll = intel_atomic_get_shared_dpll_state(&state->base);

 if (shared_dpll[id].crtc_mask == 0)
  shared_dpll[id].hw_state = *pll_state;

 DRM_DEBUG_DRIVER("using %s for pipe %c\n", pll->info->name,
    pipe_name(crtc->pipe));

 shared_dpll[id].crtc_mask |= 1 << crtc->pipe;
}
