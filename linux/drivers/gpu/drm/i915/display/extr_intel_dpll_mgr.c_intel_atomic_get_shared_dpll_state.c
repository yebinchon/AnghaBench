
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_shared_dpll_state {int dummy; } ;
struct intel_atomic_state {int dpll_set; struct intel_shared_dpll_state* shared_dpll; } ;
struct drm_atomic_state {TYPE_2__* dev; } ;
struct TYPE_3__ {int connection_mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;


 int WARN_ON (int) ;
 int drm_modeset_is_locked (int *) ;
 int intel_atomic_duplicate_dpll_state (int ,struct intel_shared_dpll_state*) ;
 int to_i915 (TYPE_2__*) ;
 struct intel_atomic_state* to_intel_atomic_state (struct drm_atomic_state*) ;

__attribute__((used)) static struct intel_shared_dpll_state *
intel_atomic_get_shared_dpll_state(struct drm_atomic_state *s)
{
 struct intel_atomic_state *state = to_intel_atomic_state(s);

 WARN_ON(!drm_modeset_is_locked(&s->dev->mode_config.connection_mutex));

 if (!state->dpll_set) {
  state->dpll_set = 1;

  intel_atomic_duplicate_dpll_state(to_i915(s->dev),
        state->shared_dpll);
 }

 return state->shared_dpll;
}
