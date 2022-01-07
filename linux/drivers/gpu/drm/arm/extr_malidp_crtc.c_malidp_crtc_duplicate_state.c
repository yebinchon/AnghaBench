
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct malidp_crtc_state {struct drm_crtc_state base; scalar_t__ scaled_planes_mask; int scaler_config; int * coloradj_coeffs; int * gamma_coeffs; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct malidp_crtc_state* kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 struct malidp_crtc_state* to_malidp_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *malidp_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct malidp_crtc_state *state, *old_state;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 old_state = to_malidp_crtc_state(crtc->state);
 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);
 memcpy(state->gamma_coeffs, old_state->gamma_coeffs,
        sizeof(state->gamma_coeffs));
 memcpy(state->coloradj_coeffs, old_state->coloradj_coeffs,
        sizeof(state->coloradj_coeffs));
 memcpy(&state->scaler_config, &old_state->scaler_config,
        sizeof(state->scaler_config));
 state->scaled_planes_mask = 0;

 return &state->base;
}
