
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int polled; } ;
struct drm_encoder {int possible_crtcs; } ;
struct zx_hdmi {TYPE_1__ connector; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_MODE_CONNECTOR_HDMIA ;
 int DRM_MODE_ENCODER_TMDS ;
 int VOU_CRTC_MASK ;
 int drm_connector_attach_encoder (TYPE_1__*,struct drm_encoder*) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_1__*,int *,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int zx_hdmi_connector_funcs ;
 int zx_hdmi_connector_helper_funcs ;
 int zx_hdmi_encoder_funcs ;
 int zx_hdmi_encoder_helper_funcs ;

__attribute__((used)) static int zx_hdmi_register(struct drm_device *drm, struct zx_hdmi *hdmi)
{
 struct drm_encoder *encoder = &hdmi->encoder;

 encoder->possible_crtcs = VOU_CRTC_MASK;

 drm_encoder_init(drm, encoder, &zx_hdmi_encoder_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));
 drm_encoder_helper_add(encoder, &zx_hdmi_encoder_helper_funcs);

 hdmi->connector.polled = DRM_CONNECTOR_POLL_HPD;

 drm_connector_init(drm, &hdmi->connector, &zx_hdmi_connector_funcs,
      DRM_MODE_CONNECTOR_HDMIA);
 drm_connector_helper_add(&hdmi->connector,
     &zx_hdmi_connector_helper_funcs);

 drm_connector_attach_encoder(&hdmi->connector, encoder);

 return 0;
}
