
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psb_intel_mode_device {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct gma_encoder {int type; struct drm_encoder base; } ;
struct TYPE_2__ {int subpixel_order; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; TYPE_1__ display_info; } ;
struct gma_connector {struct drm_connector base; } ;
struct drm_device {int dev; } ;


 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_ENCODER_TMDS ;
 int GFP_KERNEL ;
 int INTEL_OUTPUT_HDMI ;
 int SubPixelHorizontalRGB ;
 int dev_info (int ,char*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_connector_register (struct drm_connector*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int gma_connector_attach_encoder (struct gma_connector*,struct gma_encoder*) ;
 int kfree (struct gma_encoder*) ;
 void* kzalloc (int,int ) ;
 int oaktrail_hdmi_connector_funcs ;
 int oaktrail_hdmi_connector_helper_funcs ;
 int oaktrail_hdmi_enc_funcs ;
 int oaktrail_hdmi_helper_funcs ;

void oaktrail_hdmi_init(struct drm_device *dev,
     struct psb_intel_mode_device *mode_dev)
{
 struct gma_encoder *gma_encoder;
 struct gma_connector *gma_connector;
 struct drm_connector *connector;
 struct drm_encoder *encoder;

 gma_encoder = kzalloc(sizeof(struct gma_encoder), GFP_KERNEL);
 if (!gma_encoder)
  return;

 gma_connector = kzalloc(sizeof(struct gma_connector), GFP_KERNEL);
 if (!gma_connector)
  goto failed_connector;

 connector = &gma_connector->base;
 encoder = &gma_encoder->base;
 drm_connector_init(dev, connector,
      &oaktrail_hdmi_connector_funcs,
      DRM_MODE_CONNECTOR_DVID);

 drm_encoder_init(dev, encoder,
    &oaktrail_hdmi_enc_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));

 gma_connector_attach_encoder(gma_connector, gma_encoder);

 gma_encoder->type = INTEL_OUTPUT_HDMI;
 drm_encoder_helper_add(encoder, &oaktrail_hdmi_helper_funcs);
 drm_connector_helper_add(connector, &oaktrail_hdmi_connector_helper_funcs);

 connector->display_info.subpixel_order = SubPixelHorizontalRGB;
 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;
 drm_connector_register(connector);
 dev_info(dev->dev, "HDMI initialised.\n");

 return;

failed_connector:
 kfree(gma_encoder);
}
