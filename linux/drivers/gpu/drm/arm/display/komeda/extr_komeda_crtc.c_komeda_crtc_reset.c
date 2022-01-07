
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct komeda_crtc_state {TYPE_1__ base; } ;
struct drm_crtc {TYPE_1__* state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_destroy_state (TYPE_1__*) ;
 int kfree (int ) ;
 struct komeda_crtc_state* kzalloc (int,int ) ;
 int to_kcrtc_st (TYPE_1__*) ;

__attribute__((used)) static void komeda_crtc_reset(struct drm_crtc *crtc)
{
 struct komeda_crtc_state *state;

 if (crtc->state)
  __drm_atomic_helper_crtc_destroy_state(crtc->state);

 kfree(to_kcrtc_st(crtc->state));
 crtc->state = ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  crtc->state = &state->base;
  crtc->state->crtc = crtc;
 }
}
