
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_crtc {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct mga_crtc*) ;
 struct mga_crtc* to_mga_crtc (struct drm_crtc*) ;

__attribute__((used)) static void mga_crtc_destroy(struct drm_crtc *crtc)
{
 struct mga_crtc *mga_crtc = to_mga_crtc(crtc);

 drm_crtc_cleanup(crtc);
 kfree(mga_crtc);
}
