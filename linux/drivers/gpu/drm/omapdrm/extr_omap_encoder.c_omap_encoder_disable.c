
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_encoder {struct omap_dss_device* output; } ;
struct omap_dss_device {scalar_t__ type; int next; int state; TYPE_1__* ops; scalar_t__ panel; int name; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {int (* disable ) (struct omap_dss_device*) ;} ;


 scalar_t__ OMAP_DISPLAY_TYPE_DSI ;
 int OMAP_DSS_DISPLAY_DISABLED ;
 int dev_dbg (int ,char*,int ) ;
 int drm_panel_disable (scalar_t__) ;
 int drm_panel_unprepare (scalar_t__) ;
 int omapdss_device_disable (int ) ;
 int omapdss_device_post_disable (int ) ;
 int stub1 (struct omap_dss_device*) ;
 struct omap_encoder* to_omap_encoder (struct drm_encoder*) ;

__attribute__((used)) static void omap_encoder_disable(struct drm_encoder *encoder)
{
 struct omap_encoder *omap_encoder = to_omap_encoder(encoder);
 struct omap_dss_device *dssdev = omap_encoder->output;
 struct drm_device *dev = encoder->dev;

 dev_dbg(dev->dev, "disable(%s)\n", dssdev->name);


 if (dssdev->panel) {
  drm_panel_disable(dssdev->panel);
  drm_panel_unprepare(dssdev->panel);
 }





 omapdss_device_disable(dssdev->next);






 if (dssdev->type != OMAP_DISPLAY_TYPE_DSI) {
  dssdev->ops->disable(dssdev);
  dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
 }





 omapdss_device_post_disable(dssdev->next);
}
