
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int state; } ;
struct atmel_hlcdc_crtc_state {struct drm_crtc_state base; int output_mode; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct atmel_hlcdc_crtc_state* drm_crtc_state_to_atmel_hlcdc_crtc_state (int ) ;
 struct atmel_hlcdc_crtc_state* kmalloc (int,int ) ;

__attribute__((used)) static struct drm_crtc_state *
atmel_hlcdc_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct atmel_hlcdc_crtc_state *state, *cur;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);
 __drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);

 cur = drm_crtc_state_to_atmel_hlcdc_crtc_state(crtc->state);
 state->output_mode = cur->output_mode;

 return &state->base;
}
