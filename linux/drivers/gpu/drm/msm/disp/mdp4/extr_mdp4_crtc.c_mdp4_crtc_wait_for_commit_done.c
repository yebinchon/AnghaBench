
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int mdp4_crtc_wait_for_flush_done (struct drm_crtc*) ;

void mdp4_crtc_wait_for_commit_done(struct drm_crtc *crtc)
{




 mdp4_crtc_wait_for_flush_done(crtc);
}
