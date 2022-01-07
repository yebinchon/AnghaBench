
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_crtc_state {int base; } ;
struct drm_crtc {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 struct malidp_crtc_state* kzalloc (int,int ) ;
 int malidp_crtc_destroy_state (struct drm_crtc*,scalar_t__) ;

__attribute__((used)) static void malidp_crtc_reset(struct drm_crtc *crtc)
{
 struct malidp_crtc_state *state =
  kzalloc(sizeof(*state), GFP_KERNEL);

 if (crtc->state)
  malidp_crtc_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &state->base);
}
