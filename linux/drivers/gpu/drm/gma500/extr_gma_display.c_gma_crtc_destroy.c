
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_crtc {struct gma_crtc* crtc_state; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct gma_crtc*) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;

void gma_crtc_destroy(struct drm_crtc *crtc)
{
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);

 kfree(gma_crtc->crtc_state);
 drm_crtc_cleanup(crtc);
 kfree(gma_crtc);
}
