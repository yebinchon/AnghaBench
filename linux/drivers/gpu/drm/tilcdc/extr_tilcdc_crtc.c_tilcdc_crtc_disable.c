
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 int tilcdc_crtc_off (struct drm_crtc*,int) ;

__attribute__((used)) static void tilcdc_crtc_disable(struct drm_crtc *crtc)
{
 tilcdc_crtc_off(crtc, 0);
}
