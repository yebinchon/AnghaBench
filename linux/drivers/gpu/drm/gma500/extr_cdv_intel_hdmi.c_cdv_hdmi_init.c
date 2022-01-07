
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct psb_intel_mode_device {int dummy; } ;
struct mid_intel_hdmi_priv {int hdmi_reg; int has_hdmi_sink; struct drm_device* dev; int * hdmi_i2c_adapter; } ;
struct TYPE_4__ {int subpixel_order; } ;
struct drm_encoder {int interlace_allowed; int doublescan_allowed; int base; TYPE_1__ display_info; int polled; } ;
struct gma_encoder {TYPE_3__* i2c_bus; int ddi_select; struct mid_intel_hdmi_priv* dev_priv; int type; struct drm_encoder base; int restore; int save; } ;
struct gma_connector {TYPE_3__* i2c_bus; int ddi_select; struct mid_intel_hdmi_priv* dev_priv; int type; struct drm_encoder base; int restore; int save; } ;
struct TYPE_5__ {int scaling_mode_property; } ;
struct drm_device {int dev; TYPE_2__ mode_config; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int base; TYPE_1__ display_info; int polled; } ;
struct TYPE_6__ {int adapter; } ;


 int DDI0_SELECT ;
 int DDI1_SELECT ;
 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_ERROR (char*,int) ;
 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_ENCODER_TMDS ;
 int DRM_MODE_SCALE_FULLSCREEN ;
 int GFP_KERNEL ;
 int GPIOD ;
 int GPIOE ;
 int INTEL_OUTPUT_HDMI ;


 int SubPixelHorizontalRGB ;
 int cdv_hdmi_connector_funcs ;
 int cdv_hdmi_connector_helper_funcs ;
 int cdv_hdmi_helper_funcs ;
 int cdv_hdmi_restore ;
 int cdv_hdmi_save ;
 int dev_err (int ,char*) ;
 int drm_connector_cleanup (struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_encoder*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_encoder*,int *,int ) ;
 int drm_connector_register (struct drm_encoder*) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int drm_object_attach_property (int *,int ,int ) ;
 int gma_connector_attach_encoder (struct gma_encoder*,struct gma_encoder*) ;
 int kfree (struct gma_encoder*) ;
 void* kzalloc (int,int ) ;
 TYPE_3__* psb_intel_i2c_create (struct drm_device*,int,char*) ;
 int psb_intel_lvds_enc_funcs ;

void cdv_hdmi_init(struct drm_device *dev,
   struct psb_intel_mode_device *mode_dev, int reg)
{
 struct gma_encoder *gma_encoder;
 struct gma_connector *gma_connector;
 struct drm_connector *connector;
 struct drm_encoder *encoder;
 struct mid_intel_hdmi_priv *hdmi_priv;
 int ddc_bus;

 gma_encoder = kzalloc(sizeof(struct gma_encoder), GFP_KERNEL);

 if (!gma_encoder)
  return;

 gma_connector = kzalloc(sizeof(struct gma_connector),
          GFP_KERNEL);

 if (!gma_connector)
  goto err_connector;

 hdmi_priv = kzalloc(sizeof(struct mid_intel_hdmi_priv), GFP_KERNEL);

 if (!hdmi_priv)
  goto err_priv;

 connector = &gma_connector->base;
 connector->polled = DRM_CONNECTOR_POLL_HPD;
 gma_connector->save = cdv_hdmi_save;
 gma_connector->restore = cdv_hdmi_restore;

 encoder = &gma_encoder->base;
 drm_connector_init(dev, connector,
      &cdv_hdmi_connector_funcs,
      DRM_MODE_CONNECTOR_DVID);

 drm_encoder_init(dev, encoder, &psb_intel_lvds_enc_funcs,
    DRM_MODE_ENCODER_TMDS, ((void*)0));

 gma_connector_attach_encoder(gma_connector, gma_encoder);
 gma_encoder->type = INTEL_OUTPUT_HDMI;
 hdmi_priv->hdmi_reg = reg;
 hdmi_priv->has_hdmi_sink = 0;
 gma_encoder->dev_priv = hdmi_priv;

 drm_encoder_helper_add(encoder, &cdv_hdmi_helper_funcs);
 drm_connector_helper_add(connector,
     &cdv_hdmi_connector_helper_funcs);
 connector->display_info.subpixel_order = SubPixelHorizontalRGB;
 connector->interlace_allowed = 0;
 connector->doublescan_allowed = 0;

 drm_object_attach_property(&connector->base,
          dev->mode_config.scaling_mode_property,
          DRM_MODE_SCALE_FULLSCREEN);

 switch (reg) {
 case 129:
  ddc_bus = GPIOE;
  gma_encoder->ddi_select = DDI0_SELECT;
  break;
 case 128:
  ddc_bus = GPIOD;
  gma_encoder->ddi_select = DDI1_SELECT;
  break;
 default:
  DRM_ERROR("unknown reg 0x%x for HDMI\n", reg);
  goto failed_ddc;
  break;
 }

 gma_encoder->i2c_bus = psb_intel_i2c_create(dev,
    ddc_bus, (reg == 129) ? "HDMIB" : "HDMIC");

 if (!gma_encoder->i2c_bus) {
  dev_err(dev->dev, "No ddc adapter available!\n");
  goto failed_ddc;
 }

 hdmi_priv->hdmi_i2c_adapter = &(gma_encoder->i2c_bus->adapter);
 hdmi_priv->dev = dev;
 drm_connector_register(connector);
 return;

failed_ddc:
 drm_encoder_cleanup(encoder);
 drm_connector_cleanup(connector);
err_priv:
 kfree(gma_connector);
err_connector:
 kfree(gma_encoder);
}
