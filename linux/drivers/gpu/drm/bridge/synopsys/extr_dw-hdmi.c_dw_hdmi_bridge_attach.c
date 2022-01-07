
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int interlace_allowed; int polled; } ;
struct dw_hdmi {int cec_notifier_mutex; struct cec_notifier* cec_notifier; int dev; int ddc; struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;
struct drm_bridge {int dev; struct drm_encoder* encoder; struct dw_hdmi* driver_private; } ;
struct cec_notifier {int dummy; } ;
struct cec_connector_info {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int ENOMEM ;
 int cec_fill_conn_info_from_drm (struct cec_connector_info*,struct drm_connector*) ;
 struct cec_notifier* cec_notifier_conn_register (int ,int *,struct cec_connector_info*) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init_with_ddc (int ,struct drm_connector*,int *,int ,int ) ;
 int dw_hdmi_connector_funcs ;
 int dw_hdmi_connector_helper_funcs ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dw_hdmi_bridge_attach(struct drm_bridge *bridge)
{
 struct dw_hdmi *hdmi = bridge->driver_private;
 struct drm_encoder *encoder = bridge->encoder;
 struct drm_connector *connector = &hdmi->connector;
 struct cec_connector_info conn_info;
 struct cec_notifier *notifier;

 connector->interlace_allowed = 1;
 connector->polled = DRM_CONNECTOR_POLL_HPD;

 drm_connector_helper_add(connector, &dw_hdmi_connector_helper_funcs);

 drm_connector_init_with_ddc(bridge->dev, connector,
        &dw_hdmi_connector_funcs,
        DRM_MODE_CONNECTOR_HDMIA,
        hdmi->ddc);

 drm_connector_attach_encoder(connector, encoder);

 cec_fill_conn_info_from_drm(&conn_info, connector);

 notifier = cec_notifier_conn_register(hdmi->dev, ((void*)0), &conn_info);
 if (!notifier)
  return -ENOMEM;

 mutex_lock(&hdmi->cec_notifier_mutex);
 hdmi->cec_notifier = notifier;
 mutex_unlock(&hdmi->cec_notifier_mutex);

 return 0;
}
