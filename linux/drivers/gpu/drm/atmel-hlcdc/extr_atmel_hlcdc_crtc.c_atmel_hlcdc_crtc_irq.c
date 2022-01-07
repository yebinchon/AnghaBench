
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int atmel_hlcdc_crtc_finish_page_flip (int ) ;
 int drm_crtc_handle_vblank (struct drm_crtc*) ;
 int drm_crtc_to_atmel_hlcdc_crtc (struct drm_crtc*) ;

void atmel_hlcdc_crtc_irq(struct drm_crtc *c)
{
 drm_crtc_handle_vblank(c);
 atmel_hlcdc_crtc_finish_page_flip(drm_crtc_to_atmel_hlcdc_crtc(c));
}
