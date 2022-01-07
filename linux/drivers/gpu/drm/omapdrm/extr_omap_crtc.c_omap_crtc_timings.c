
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct omap_crtc {struct videomode vm; } ;
struct drm_crtc {int dummy; } ;


 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

struct videomode *omap_crtc_timings(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 return &omap_crtc->vm;
}
