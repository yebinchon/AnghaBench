
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_ctl* ctl; } ;
struct drm_crtc {int state; } ;


 struct mdp5_crtc_state* to_mdp5_crtc_state (int ) ;

struct mdp5_ctl *mdp5_crtc_get_ctl(struct drm_crtc *crtc)
{
 struct mdp5_crtc_state *mdp5_cstate = to_mdp5_crtc_state(crtc->state);

 return mdp5_cstate->ctl;
}
