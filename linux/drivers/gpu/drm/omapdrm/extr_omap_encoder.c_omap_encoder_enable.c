
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_encoder {struct omap_dss_device* output; } ;
struct omap_dss_device {scalar_t__ type; scalar_t__ panel; int next; int state; TYPE_1__* ops; int name; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int (* enable ) (struct omap_dss_device*) ;} ;


 scalar_t__ OMAP_DISPLAY_TYPE_DSI ;
 int OMAP_DSS_DISPLAY_ACTIVE ;
 int dev_dbg (int ,char*,int ) ;
 int drm_panel_enable (scalar_t__) ;
 int drm_panel_prepare (scalar_t__) ;
 int omapdss_device_enable (int ) ;
 int omapdss_device_pre_enable (int ) ;
 int stub1 (struct omap_dss_device*) ;
 struct omap_encoder* to_omap_encoder (struct drm_encoder*) ;

__attribute__((used)) static void omap_encoder_enable(struct drm_encoder *encoder)
{
 struct omap_encoder *omap_encoder = to_omap_encoder(encoder);
 struct omap_dss_device *dssdev = omap_encoder->output;
 struct drm_device *dev = encoder->dev;

 dev_dbg(dev->dev, "enable(%s)\n", dssdev->name);


 omapdss_device_pre_enable(dssdev->next);






 if (dssdev->type != OMAP_DISPLAY_TYPE_DSI) {
  dssdev->ops->enable(dssdev);
  dssdev->state = OMAP_DSS_DISPLAY_ACTIVE;
 }





 omapdss_device_enable(dssdev->next);


 if (dssdev->panel) {
  drm_panel_prepare(dssdev->panel);
  drm_panel_enable(dssdev->panel);
 }
}
