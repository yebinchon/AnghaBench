
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int base; } ;


 int drm_atomic_crtc_needs_modeset (int *) ;

__attribute__((used)) static bool
needs_modeset(const struct intel_crtc_state *state)
{
 return drm_atomic_crtc_needs_modeset(&state->base);
}
