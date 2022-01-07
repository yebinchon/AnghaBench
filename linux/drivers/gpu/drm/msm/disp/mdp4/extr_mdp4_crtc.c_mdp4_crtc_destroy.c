
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp4_crtc {int unref_cursor_work; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int drm_flip_work_cleanup (int *) ;
 int kfree (struct mdp4_crtc*) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mdp4_crtc_destroy(struct drm_crtc *crtc)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);

 drm_crtc_cleanup(crtc);
 drm_flip_work_cleanup(&mdp4_crtc->unref_cursor_work);

 kfree(mdp4_crtc);
}
