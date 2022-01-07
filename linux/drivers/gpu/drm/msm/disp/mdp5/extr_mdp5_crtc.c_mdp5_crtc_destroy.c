
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_crtc {int unref_cursor_work; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int drm_flip_work_cleanup (int *) ;
 int kfree (struct mdp5_crtc*) ;
 struct mdp5_crtc* to_mdp5_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mdp5_crtc_destroy(struct drm_crtc *crtc)
{
 struct mdp5_crtc *mdp5_crtc = to_mdp5_crtc(crtc);

 drm_crtc_cleanup(crtc);
 drm_flip_work_cleanup(&mdp5_crtc->unref_cursor_work);

 kfree(mdp5_crtc);
}
