
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int tilcdc_crtc_off (struct drm_crtc*,int) ;

void tilcdc_crtc_shutdown(struct drm_crtc *crtc)
{
 tilcdc_crtc_off(crtc, 1);
}
