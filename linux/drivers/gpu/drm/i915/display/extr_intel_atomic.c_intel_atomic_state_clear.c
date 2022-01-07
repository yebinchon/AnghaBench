
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_atomic_state {int dpll_set; int modeset; int base; } ;
struct drm_atomic_state {int dummy; } ;


 int drm_atomic_state_default_clear (int *) ;
 struct intel_atomic_state* to_intel_atomic_state (struct drm_atomic_state*) ;

void intel_atomic_state_clear(struct drm_atomic_state *s)
{
 struct intel_atomic_state *state = to_intel_atomic_state(s);
 drm_atomic_state_default_clear(&state->base);
 state->dpll_set = state->modeset = 0;
}
