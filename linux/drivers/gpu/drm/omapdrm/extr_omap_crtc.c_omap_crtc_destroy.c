
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_crtc {int name; } ;
struct drm_crtc {int dummy; } ;


 int DBG (char*,int ) ;
 int drm_crtc_cleanup (struct drm_crtc*) ;
 int kfree (struct omap_crtc*) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static void omap_crtc_destroy(struct drm_crtc *crtc)
{
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);

 DBG("%s", omap_crtc->name);

 drm_crtc_cleanup(crtc);

 kfree(omap_crtc);
}
