
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;
struct atmel_hlcdc_crtc {int dummy; } ;


 int drm_crtc_cleanup (struct drm_crtc*) ;
 struct atmel_hlcdc_crtc* drm_crtc_to_atmel_hlcdc_crtc (struct drm_crtc*) ;
 int kfree (struct atmel_hlcdc_crtc*) ;

__attribute__((used)) static void atmel_hlcdc_crtc_destroy(struct drm_crtc *c)
{
 struct atmel_hlcdc_crtc *crtc = drm_crtc_to_atmel_hlcdc_crtc(c);

 drm_crtc_cleanup(c);
 kfree(crtc);
}
