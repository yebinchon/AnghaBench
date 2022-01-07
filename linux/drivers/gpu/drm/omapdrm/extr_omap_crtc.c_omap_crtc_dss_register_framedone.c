
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_drm_private {TYPE_1__** channels; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct omap_crtc {void (* framedone_handler ) (void*) ;void* framedone_handler_data; int name; TYPE_2__ base; } ;
struct drm_device {int dev; } ;
struct drm_crtc {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;


 int EBUSY ;
 int dev_dbg (int ,char*,int ) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static int omap_crtc_dss_register_framedone(
  struct omap_drm_private *priv, enum omap_channel channel,
  void (*handler)(void *), void *data)
{
 struct drm_crtc *crtc = priv->channels[channel]->crtc;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct drm_device *dev = omap_crtc->base.dev;

 if (omap_crtc->framedone_handler)
  return -EBUSY;

 dev_dbg(dev->dev, "register framedone %s", omap_crtc->name);

 omap_crtc->framedone_handler = handler;
 omap_crtc->framedone_handler_data = data;

 return 0;
}
