
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_crtc {int pp_completion; } ;
struct drm_crtc {int dummy; } ;


 int reinit_completion (int *) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;

__attribute__((used)) static void request_pp_done_pending(struct drm_crtc *crtc)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);
 reinit_completion(&mdp5_crtc->pp_completion);
}
