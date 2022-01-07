
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_crtc_state {int base; } ;
struct drm_crtc {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_reset (struct drm_crtc*) ;
 struct mdp5_crtc_state* kzalloc (int,int ) ;
 int mdp5_crtc_destroy_state (struct drm_crtc*,scalar_t__) ;

__attribute__((used)) static void mdp5_crtc_reset(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate =
  kzalloc(sizeof(*mdp5_cstate), GFP_KERNEL);

 if (crtc->state)
  mdp5_crtc_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &mdp5_cstate->base);

 drm_crtc_vblank_reset(crtc);
}
