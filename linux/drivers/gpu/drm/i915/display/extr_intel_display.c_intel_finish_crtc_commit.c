
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_flags; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;
struct intel_crtc_state {TYPE_2__ base; scalar_t__ update_pipe; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;


 int I915_MODE_FLAG_INHERITED ;
 struct intel_crtc_state* intel_atomic_get_new_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 struct intel_crtc_state* intel_atomic_get_old_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 int intel_crtc_arm_fifo_underrun (struct intel_crtc*,struct intel_crtc_state*) ;
 int intel_pipe_update_end (struct intel_crtc_state*) ;
 int needs_modeset (struct intel_crtc_state*) ;

__attribute__((used)) static void intel_finish_crtc_commit(struct intel_atomic_state *state,
         struct intel_crtc *crtc)
{
 struct intel_crtc_state *old_crtc_state =
  intel_atomic_get_old_crtc_state(state, crtc);
 struct intel_crtc_state *new_crtc_state =
  intel_atomic_get_new_crtc_state(state, crtc);

 intel_pipe_update_end(new_crtc_state);

 if (new_crtc_state->update_pipe &&
     !needs_modeset(new_crtc_state) &&
     old_crtc_state->base.mode.private_flags & I915_MODE_FLAG_INHERITED)
  intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
}
