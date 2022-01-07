
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int * shared_dpll; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;


 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 struct intel_crtc_state* intel_atomic_get_old_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 int intel_unreference_shared_dpll (struct intel_atomic_state*,struct intel_crtc*,int *) ;

__attribute__((used)) static void intel_put_dpll(struct intel_atomic_state *state,
      struct intel_crtc *crtc)
{
 const struct intel_crtc_state *old_crtc_state =
  intel_atomic_get_old_crtc_state(state, crtc);
 struct intel_crtc_state *new_crtc_state =
  intel_atomic_get_new_crtc_state(state, crtc);

 new_crtc_state->shared_dpll = ((void*)0);

 if (!old_crtc_state->shared_dpll)
  return;

 intel_unreference_shared_dpll(state, crtc, old_crtc_state->shared_dpll);
}
