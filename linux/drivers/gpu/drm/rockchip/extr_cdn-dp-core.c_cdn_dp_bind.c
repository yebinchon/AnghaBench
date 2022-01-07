
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int possible_crtcs; } ;
struct drm_device {int dummy; } ;
struct drm_connector {int dpms; int polled; } ;
struct device {int of_node; } ;
struct TYPE_2__ {int notifier_call; } ;
struct cdn_dp_port {TYPE_1__ event_nb; int extcon; } ;
struct cdn_dp_device {int connected; int active; int active_port; int fw_loaded; int ports; int event_work; int dev; struct cdn_dp_port** port; struct drm_connector connector; struct drm_encoder encoder; struct drm_device* drm_dev; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_DEV_ERROR (struct device*,char*) ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_ENCODER_TMDS ;
 int EXTCON_DISP_DP ;
 int INIT_WORK (int *,int ) ;
 int cdn_dp_atomic_connector_funcs ;
 int cdn_dp_connector_helper_funcs ;
 int cdn_dp_encoder_funcs ;
 int cdn_dp_encoder_helper_funcs ;
 int cdn_dp_parse_dt (struct cdn_dp_device*) ;
 int cdn_dp_pd_event ;
 int cdn_dp_pd_event_work ;
 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int devm_extcon_register_notifier (int ,int ,int ,TYPE_1__*) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_of_find_possible_crtcs (struct drm_device*,int ) ;
 int pm_runtime_enable (struct device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int cdn_dp_bind(struct device *dev, struct device *master, void *data)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);
 struct drm_encoder *encoder;
 struct drm_connector *connector;
 struct cdn_dp_port *port;
 struct drm_device *drm_dev = data;
 int ret, i;

 ret = cdn_dp_parse_dt(dp);
 if (ret < 0)
  return ret;

 dp->drm_dev = drm_dev;
 dp->connected = 0;
 dp->active = 0;
 dp->active_port = -1;
 dp->fw_loaded = 0;

 INIT_WORK(&dp->event_work, cdn_dp_pd_event_work);

 encoder = &dp->encoder;

 encoder->possible_crtcs = drm_of_find_possible_crtcs(drm_dev,
            dev->of_node);
 DRM_DEBUG_KMS("possible_crtcs = 0x%x\n", encoder->possible_crtcs);

 ret = drm_encoder_init(drm_dev, encoder, &cdn_dp_encoder_funcs,
          DRM_MODE_ENCODER_TMDS, ((void*)0));
 if (ret) {
  DRM_ERROR("failed to initialize encoder with drm\n");
  return ret;
 }

 drm_encoder_helper_add(encoder, &cdn_dp_encoder_helper_funcs);

 connector = &dp->connector;
 connector->polled = DRM_CONNECTOR_POLL_HPD;
 connector->dpms = DRM_MODE_DPMS_OFF;

 ret = drm_connector_init(drm_dev, connector,
     &cdn_dp_atomic_connector_funcs,
     DRM_MODE_CONNECTOR_DisplayPort);
 if (ret) {
  DRM_ERROR("failed to initialize connector with drm\n");
  goto err_free_encoder;
 }

 drm_connector_helper_add(connector, &cdn_dp_connector_helper_funcs);

 ret = drm_connector_attach_encoder(connector, encoder);
 if (ret) {
  DRM_ERROR("failed to attach connector and encoder\n");
  goto err_free_connector;
 }

 for (i = 0; i < dp->ports; i++) {
  port = dp->port[i];

  port->event_nb.notifier_call = cdn_dp_pd_event;
  ret = devm_extcon_register_notifier(dp->dev, port->extcon,
          EXTCON_DISP_DP,
          &port->event_nb);
  if (ret) {
   DRM_DEV_ERROR(dev,
          "register EXTCON_DISP_DP notifier err\n");
   goto err_free_connector;
  }
 }

 pm_runtime_enable(dev);

 schedule_work(&dp->event_work);

 return 0;

err_free_connector:
 drm_connector_cleanup(connector);
err_free_encoder:
 drm_encoder_cleanup(encoder);
 return ret;
}
