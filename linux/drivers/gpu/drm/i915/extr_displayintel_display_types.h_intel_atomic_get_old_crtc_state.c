
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int dummy; } ;
struct intel_crtc {int base; } ;
struct intel_atomic_state {int base; } ;


 int drm_atomic_get_old_crtc_state (int *,int *) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;

__attribute__((used)) static inline struct intel_crtc_state *
intel_atomic_get_old_crtc_state(struct intel_atomic_state *state,
    struct intel_crtc *crtc)
{
 return to_intel_crtc_state(drm_atomic_get_old_crtc_state(&state->base,
         &crtc->base));
}
