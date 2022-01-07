
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_atomic_state {int commit_ready; } ;
struct drm_atomic_state {int dummy; } ;


 int drm_atomic_state_default_release (struct drm_atomic_state*) ;
 int i915_sw_fence_fini (int *) ;
 int kfree (struct drm_atomic_state*) ;
 struct intel_atomic_state* to_intel_atomic_state (struct drm_atomic_state*) ;

__attribute__((used)) static void intel_atomic_state_free(struct drm_atomic_state *state)
{
 struct intel_atomic_state *intel_state = to_intel_atomic_state(state);

 drm_atomic_state_default_release(state);

 i915_sw_fence_fini(&intel_state->commit_ready);

 kfree(state);
}
