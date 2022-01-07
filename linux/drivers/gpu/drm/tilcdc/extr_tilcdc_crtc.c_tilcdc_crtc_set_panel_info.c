
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_panel_info {int dummy; } ;
struct tilcdc_crtc {struct tilcdc_panel_info const* info; } ;
struct drm_crtc {int dummy; } ;


 struct tilcdc_crtc* to_tilcdc_crtc (struct drm_crtc*) ;

void tilcdc_crtc_set_panel_info(struct drm_crtc *crtc,
  const struct tilcdc_panel_info *info)
{
 struct tilcdc_crtc *tilcdc_crtc = to_tilcdc_crtc(crtc);
 tilcdc_crtc->info = info;
}
