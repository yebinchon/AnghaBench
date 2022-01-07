
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_crtc {int base; int t_vblank; } ;


 int drm_crtc_handle_vblank (int *) ;
 int ktime_get () ;
 int vc4_crtc_handle_page_flip (struct vc4_crtc*) ;

void vc4_crtc_handle_vblank(struct vc4_crtc *crtc)
{
 crtc->t_vblank = ktime_get();
 drm_crtc_handle_vblank(&crtc->base);
 vc4_crtc_handle_page_flip(crtc);
}
