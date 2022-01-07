
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_crtc {TYPE_1__* state; } ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct atmel_hlcdc_crtc_state {TYPE_1__ base; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_destroy_state (TYPE_1__*) ;
 struct atmel_hlcdc_crtc_state* drm_crtc_state_to_atmel_hlcdc_crtc_state (TYPE_1__*) ;
 int kfree (struct atmel_hlcdc_crtc_state*) ;
 struct atmel_hlcdc_crtc_state* kzalloc (int,int ) ;

__attribute__((used)) static void atmel_hlcdc_crtc_reset(struct drm_crtc *crtc)
{
 struct atmel_hlcdc_crtc_state *state;

 if (crtc->state) {
  __drm_atomic_helper_crtc_destroy_state(crtc->state);
  state = drm_crtc_state_to_atmel_hlcdc_crtc_state(crtc->state);
  kfree(state);
  crtc->state = ((void*)0);
 }

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  crtc->state = &state->base;
  crtc->state->crtc = crtc;
 }
}
