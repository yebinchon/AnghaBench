#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct psb_intel_mode_device {int dummy; } ;
struct mid_intel_hdmi_priv {int hdmi_reg; int has_hdmi_sink; struct drm_device* dev; int /*<<< orphan*/ * hdmi_i2c_adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  subpixel_order; } ;
struct drm_encoder {int interlace_allowed; int doublescan_allowed; int /*<<< orphan*/  base; TYPE_1__ display_info; int /*<<< orphan*/  polled; } ;
struct gma_encoder {TYPE_3__* i2c_bus; int /*<<< orphan*/  ddi_select; struct mid_intel_hdmi_priv* dev_priv; int /*<<< orphan*/  type; struct drm_encoder base; int /*<<< orphan*/  restore; int /*<<< orphan*/  save; } ;
struct gma_connector {TYPE_3__* i2c_bus; int /*<<< orphan*/  ddi_select; struct mid_intel_hdmi_priv* dev_priv; int /*<<< orphan*/  type; struct drm_encoder base; int /*<<< orphan*/  restore; int /*<<< orphan*/  save; } ;
struct TYPE_5__ {int /*<<< orphan*/  scaling_mode_property; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_2__ mode_config; } ;
struct drm_connector {int interlace_allowed; int doublescan_allowed; int /*<<< orphan*/  base; TYPE_1__ display_info; int /*<<< orphan*/  polled; } ;
struct TYPE_6__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDI0_SELECT ; 
 int /*<<< orphan*/  DDI1_SELECT ; 
 int /*<<< orphan*/  DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DVID ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_FULLSCREEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD ; 
 int GPIOE ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
#define  SDVOB 129 
#define  SDVOC 128 
 int /*<<< orphan*/  SubPixelHorizontalRGB ; 
 int /*<<< orphan*/  cdv_hdmi_connector_funcs ; 
 int /*<<< orphan*/  cdv_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  cdv_hdmi_helper_funcs ; 
 int /*<<< orphan*/  cdv_hdmi_restore ; 
 int /*<<< orphan*/  cdv_hdmi_save ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gma_encoder*,struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC11 (struct gma_encoder*) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (struct drm_device*,int,char*) ; 
 int /*<<< orphan*/  psb_intel_lvds_enc_funcs ; 

void FUNC14(struct drm_device *dev,
			struct psb_intel_mode_device *mode_dev, int reg)
{
	struct gma_encoder *gma_encoder;
	struct gma_connector *gma_connector;
	struct drm_connector *connector;
	struct drm_encoder *encoder;
	struct mid_intel_hdmi_priv *hdmi_priv;
	int ddc_bus;

	gma_encoder = FUNC12(sizeof(struct gma_encoder), GFP_KERNEL);

	if (!gma_encoder)
		return;

	gma_connector = FUNC12(sizeof(struct gma_connector),
				      GFP_KERNEL);

	if (!gma_connector)
		goto err_connector;

	hdmi_priv = FUNC12(sizeof(struct mid_intel_hdmi_priv), GFP_KERNEL);

	if (!hdmi_priv)
		goto err_priv;

	connector = &gma_connector->base;
	connector->polled = DRM_CONNECTOR_POLL_HPD;
	gma_connector->save = cdv_hdmi_save;
	gma_connector->restore = cdv_hdmi_restore;

	encoder = &gma_encoder->base;
	FUNC4(dev, connector,
			   &cdv_hdmi_connector_funcs,
			   DRM_MODE_CONNECTOR_DVID);

	FUNC8(dev, encoder, &psb_intel_lvds_enc_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC10(gma_connector, gma_encoder);
	gma_encoder->type = INTEL_OUTPUT_HDMI;
	hdmi_priv->hdmi_reg = reg;
	hdmi_priv->has_hdmi_sink = false;
	gma_encoder->dev_priv = hdmi_priv;

	FUNC7(encoder, &cdv_hdmi_helper_funcs);
	FUNC3(connector,
				 &cdv_hdmi_connector_helper_funcs);
	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
	connector->interlace_allowed = false;
	connector->doublescan_allowed = false;

	FUNC9(&connector->base,
				      dev->mode_config.scaling_mode_property,
				      DRM_MODE_SCALE_FULLSCREEN);

	switch (reg) {
	case SDVOB:
		ddc_bus = GPIOE;
		gma_encoder->ddi_select = DDI0_SELECT;
		break;
	case SDVOC:
		ddc_bus = GPIOD;
		gma_encoder->ddi_select = DDI1_SELECT;
		break;
	default:
		FUNC0("unknown reg 0x%x for HDMI\n", reg);
		goto failed_ddc;
		break;
	}

	gma_encoder->i2c_bus = FUNC13(dev,
				ddc_bus, (reg == SDVOB) ? "HDMIB" : "HDMIC");

	if (!gma_encoder->i2c_bus) {
		FUNC1(dev->dev, "No ddc adapter available!\n");
		goto failed_ddc;
	}

	hdmi_priv->hdmi_i2c_adapter = &(gma_encoder->i2c_bus->adapter);
	hdmi_priv->dev = dev;
	FUNC5(connector);
	return;

failed_ddc:
	FUNC6(encoder);
	FUNC2(connector);
err_priv:
	FUNC11(gma_connector);
err_connector:
	FUNC11(gma_encoder);
}