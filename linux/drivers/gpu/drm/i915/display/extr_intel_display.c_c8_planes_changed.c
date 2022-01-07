
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int crtc; } ;
struct intel_crtc_state {int c8_planes; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct intel_atomic_state {int dummy; } ;


 struct intel_crtc_state* intel_atomic_get_old_crtc_state (struct intel_atomic_state*,struct intel_crtc*) ;
 struct intel_atomic_state* to_intel_atomic_state (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static bool c8_planes_changed(const struct intel_crtc_state *new_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 struct intel_atomic_state *state =
  to_intel_atomic_state(new_crtc_state->base.state);
 const struct intel_crtc_state *old_crtc_state =
  intel_atomic_get_old_crtc_state(state, crtc);

 return !old_crtc_state->c8_planes != !new_crtc_state->c8_planes;
}
