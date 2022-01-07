
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int polled; } ;
struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct inno_hdmi {TYPE_1__ connector; struct device* dev; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct device {int of_node; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_ENCODER_TMDS ;
 int EPROBE_DEFER ;
 int drm_connector_attach_encoder (TYPE_1__*,struct drm_encoder*) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_1__*,int *,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 scalar_t__ drm_of_find_possible_crtcs (struct drm_device*,int ) ;
 int inno_hdmi_connector_funcs ;
 int inno_hdmi_connector_helper_funcs ;
 int inno_hdmi_encoder_funcs ;
 int inno_hdmi_encoder_helper_funcs ;

__attribute__((used)) static int inno_hdmi_register(struct drm_device *drm, struct inno_hdmi *hdmi)
{
 struct drm_encoder *encoder = &hdmi->encoder;
 struct device *dev = hdmi->dev;

 encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);







 if (encoder->possible_crtcs == 0)
  return -EPROBE_DEFER;

 drm_encoder_helper_add(encoder, &inno_hdmi_encoder_helper_funcs);
 drm_encoder_init(drm, encoder, &inno_hdmi_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));

 hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;

 drm_connector_helper_add(&hdmi->connector,
     &inno_hdmi_connector_helper_funcs);
 drm_connector_init(drm, &hdmi->connector, &inno_hdmi_connector_funcs,
      DRM_MODE_CONNECTOR_HDMIA);

 drm_connector_attach_encoder(&hdmi->connector, encoder);

 return 0;
}
