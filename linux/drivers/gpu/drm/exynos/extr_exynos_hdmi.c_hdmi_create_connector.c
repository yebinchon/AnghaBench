
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int interlace_allowed; int polled; } ;
struct hdmi_context {int dev; scalar_t__ bridge; int drm_dev; struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int drm_bridge_attach (struct drm_encoder*,scalar_t__,int *) ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 struct hdmi_context* encoder_to_hdmi (struct drm_encoder*) ;
 int hdmi_connector_funcs ;
 int hdmi_connector_helper_funcs ;

__attribute__((used)) static int hdmi_create_connector(struct drm_encoder *encoder)
{
 struct hdmi_context *hdata = encoder_to_hdmi(encoder);
 struct drm_connector *connector = &hdata->connector;
 int ret;

 connector->interlace_allowed = 1;
 connector->polled = DRM_CONNECTOR_POLL_HPD;

 ret = drm_connector_init(hdata->drm_dev, connector,
   &hdmi_connector_funcs, DRM_MODE_CONNECTOR_HDMIA);
 if (ret) {
  DRM_DEV_ERROR(hdata->dev,
         "Failed to initialize connector with drm\n");
  return ret;
 }

 drm_connector_helper_add(connector, &hdmi_connector_helper_funcs);
 drm_connector_attach_encoder(connector, encoder);

 if (hdata->bridge) {
  ret = drm_bridge_attach(encoder, hdata->bridge, ((void*)0));
  if (ret)
   DRM_DEV_ERROR(hdata->dev, "Failed to attach bridge\n");
 }

 return ret;
}
