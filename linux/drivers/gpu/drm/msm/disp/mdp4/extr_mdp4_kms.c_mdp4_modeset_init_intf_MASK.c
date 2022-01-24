#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msm_drm_private {int /*<<< orphan*/ * dsi; int /*<<< orphan*/  num_encoders; struct drm_encoder** encoders; int /*<<< orphan*/  hdmi; int /*<<< orphan*/  num_connectors; struct drm_encoder** connectors; } ;
struct mdp4_kms {struct drm_device* dev; } ;
struct drm_encoder {int possible_crtcs; } ;
struct drm_device {TYPE_1__* dev; struct msm_drm_private* dev_private; } ;
struct drm_connector {int possible_crtcs; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int DMA_P ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
#define  DRM_MODE_ENCODER_DSI 130 
#define  DRM_MODE_ENCODER_LVDS 129 
#define  DRM_MODE_ENCODER_TMDS 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int FUNC2 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC3 (struct drm_device*) ; 
 struct drm_encoder* FUNC4 (struct drm_device*) ; 
 struct drm_encoder* FUNC5 (struct drm_device*,struct device_node*) ; 
 struct drm_encoder* FUNC6 (struct drm_device*,struct device_node*,struct drm_encoder*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct drm_device*,struct drm_encoder*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct drm_device*,struct drm_encoder*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mdp4_kms *mdp4_kms,
				  int intf_type)
{
	struct drm_device *dev = mdp4_kms->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_encoder *encoder;
	struct drm_connector *connector;
	struct device_node *panel_node;
	int dsi_id;
	int ret;

	switch (intf_type) {
	case DRM_MODE_ENCODER_LVDS:
		/*
		 * bail out early if there is no panel node (no need to
		 * initialize LCDC encoder and LVDS connector)
		 */
		panel_node = FUNC9(dev->dev->of_node, 0, 0);
		if (!panel_node)
			return 0;

		encoder = FUNC5(dev, panel_node);
		if (FUNC1(encoder)) {
			FUNC0(dev->dev, "failed to construct LCDC encoder\n");
			return FUNC2(encoder);
		}

		/* LCDC can be hooked to DMA_P (TODO: Add DMA_S later?) */
		encoder->possible_crtcs = 1 << DMA_P;

		connector = FUNC6(dev, panel_node, encoder);
		if (FUNC1(connector)) {
			FUNC0(dev->dev, "failed to initialize LVDS connector\n");
			return FUNC2(connector);
		}

		priv->encoders[priv->num_encoders++] = encoder;
		priv->connectors[priv->num_connectors++] = connector;

		break;
	case DRM_MODE_ENCODER_TMDS:
		encoder = FUNC4(dev);
		if (FUNC1(encoder)) {
			FUNC0(dev->dev, "failed to construct DTV encoder\n");
			return FUNC2(encoder);
		}

		/* DTV can be hooked to DMA_E: */
		encoder->possible_crtcs = 1 << 1;

		if (priv->hdmi) {
			/* Construct bridge/connector for HDMI: */
			ret = FUNC8(priv->hdmi, dev, encoder);
			if (ret) {
				FUNC0(dev->dev, "failed to initialize HDMI: %d\n", ret);
				return ret;
			}
		}

		priv->encoders[priv->num_encoders++] = encoder;

		break;
	case DRM_MODE_ENCODER_DSI:
		/* only DSI1 supported for now */
		dsi_id = 0;

		if (!priv->dsi[dsi_id])
			break;

		encoder = FUNC3(dev);
		if (FUNC1(encoder)) {
			ret = FUNC2(encoder);
			FUNC0(dev->dev,
				"failed to construct DSI encoder: %d\n", ret);
			return ret;
		}

		/* TODO: Add DMA_S later? */
		encoder->possible_crtcs = 1 << DMA_P;
		priv->encoders[priv->num_encoders++] = encoder;

		ret = FUNC7(priv->dsi[dsi_id], dev, encoder);
		if (ret) {
			FUNC0(dev->dev, "failed to initialize DSI: %d\n",
				ret);
			return ret;
		}

		break;
	default:
		FUNC0(dev->dev, "Invalid or unsupported interface\n");
		return -EINVAL;
	}

	return 0;
}