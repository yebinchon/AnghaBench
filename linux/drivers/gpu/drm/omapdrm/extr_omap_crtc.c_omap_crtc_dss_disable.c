
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_drm_private {TYPE_1__** channels; } ;
struct omap_crtc {int base; } ;
struct drm_crtc {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;


 int omap_crtc_set_enabled (int *,int) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static void omap_crtc_dss_disable(struct omap_drm_private *priv,
      enum omap_channel channel)
{
 struct drm_crtc *crtc = priv->channels[channel]->crtc;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);

 omap_crtc_set_enabled(&omap_crtc->base, 0);
}
