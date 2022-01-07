
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_crtc_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int __drm_atomic_helper_crtc_destroy_state (struct drm_crtc_state*) ;
 int kfree (struct mdp5_crtc_state*) ;
 struct mdp5_crtc_state* to_mdp5_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static void mdp5_crtc_destroy_state(struct drm_crtc *crtc, struct drm_crtc_state *state)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(state);

 __drm_atomic_helper_crtc_destroy_state(state);

 kfree(mdp5_cstate);
}
