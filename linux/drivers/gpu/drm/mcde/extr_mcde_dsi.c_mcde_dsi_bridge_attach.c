
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; int polled; } ;
struct mcde_dsi {TYPE_1__ connector; int dev; int bridge_out; } ;
struct drm_device {int dummy; } ;
struct drm_bridge {int encoder; struct drm_device* dev; } ;


 int DRIVER_ATOMIC ;
 int DRM_CONNECTOR_POLL_CONNECT ;
 int DRM_MODE_CONNECTOR_DSI ;
 int ENOTSUPP ;
 struct mcde_dsi* bridge_to_mcde_dsi (struct drm_bridge*) ;
 int connector_status_connected ;
 int dev_err (int ,char*) ;
 int drm_bridge_attach (int ,int ,struct drm_bridge*) ;
 int drm_connector_attach_encoder (TYPE_1__*,int ) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_1__*,int *,int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int mcde_dsi_connector_funcs ;
 int mcde_dsi_connector_helper_funcs ;

__attribute__((used)) static int mcde_dsi_bridge_attach(struct drm_bridge *bridge)
{
 struct mcde_dsi *d = bridge_to_mcde_dsi(bridge);
 struct drm_device *drm = bridge->dev;
 int ret;

 drm_connector_helper_add(&d->connector,
     &mcde_dsi_connector_helper_funcs);

 if (!drm_core_check_feature(drm, DRIVER_ATOMIC)) {
  dev_err(d->dev, "we need atomic updates\n");
  return -ENOTSUPP;
 }

 ret = drm_connector_init(drm, &d->connector,
     &mcde_dsi_connector_funcs,
     DRM_MODE_CONNECTOR_DSI);
 if (ret) {
  dev_err(d->dev, "failed to initialize DSI bridge connector\n");
  return ret;
 }
 d->connector.polled = DRM_CONNECTOR_POLL_CONNECT;

 drm_connector_attach_encoder(&d->connector, bridge->encoder);

 ret = drm_bridge_attach(bridge->encoder, d->bridge_out, bridge);
 if (ret) {
  dev_err(d->dev, "failed to attach the DSI bridge\n");
  return ret;
 }
 d->connector.status = connector_status_connected;

 return 0;
}
