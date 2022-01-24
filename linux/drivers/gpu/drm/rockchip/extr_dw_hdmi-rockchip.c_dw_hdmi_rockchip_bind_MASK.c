#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct rockchip_hdmi {int /*<<< orphan*/  vpll_clk; int /*<<< orphan*/  hdmi; TYPE_1__* dev; int /*<<< orphan*/  phy; struct drm_encoder encoder; struct rockchip_hdmi* chip_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct dw_hdmi_plat_data {struct rockchip_hdmi* phy_data; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct dw_hdmi_plat_data* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct rockchip_hdmi* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct drm_encoder*,struct dw_hdmi_plat_data*) ; 
 int /*<<< orphan*/  dw_hdmi_rockchip_dt_ids ; 
 int /*<<< orphan*/  dw_hdmi_rockchip_encoder_funcs ; 
 int /*<<< orphan*/  dw_hdmi_rockchip_encoder_helper_funcs ; 
 struct of_device_id* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rockchip_hdmi*) ; 
 int FUNC15 (struct rockchip_hdmi*) ; 
 struct platform_device* FUNC16 (struct device*) ; 

__attribute__((used)) static int FUNC17(struct device *dev, struct device *master,
				 void *data)
{
	struct platform_device *pdev = FUNC16(dev);
	struct dw_hdmi_plat_data *plat_data;
	const struct of_device_id *match;
	struct drm_device *drm = data;
	struct drm_encoder *encoder;
	struct rockchip_hdmi *hdmi;
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	hdmi = FUNC6(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	match = FUNC13(dw_hdmi_rockchip_dt_ids, pdev->dev.of_node);
	plat_data = FUNC5(&pdev->dev, match->data,
					     sizeof(*plat_data), GFP_KERNEL);
	if (!plat_data)
		return -ENOMEM;

	hdmi->dev = &pdev->dev;
	hdmi->chip_data = plat_data->phy_data;
	plat_data->phy_data = hdmi;
	encoder = &hdmi->encoder;

	encoder->possible_crtcs = FUNC11(drm, dev->of_node);
	/*
	 * If we failed to find the CRTC(s) which this encoder is
	 * supposed to be connected to, it's because the CRTC has
	 * not been registered yet.  Defer probing, and hope that
	 * the required CRTC is added later.
	 */
	if (encoder->possible_crtcs == 0)
		return -EPROBE_DEFER;

	ret = FUNC15(hdmi);
	if (ret) {
		FUNC0(hdmi->dev, "Unable to parse OF data\n");
		return ret;
	}

	ret = FUNC4(hdmi->vpll_clk);
	if (ret) {
		FUNC0(hdmi->dev, "Failed to enable HDMI vpll: %d\n",
			      ret);
		return ret;
	}

	hdmi->phy = FUNC7(dev, "hdmi");
	if (FUNC1(hdmi->phy)) {
		ret = FUNC2(hdmi->phy);
		if (ret != -EPROBE_DEFER)
			FUNC0(hdmi->dev, "failed to get phy\n");
		return ret;
	}

	FUNC9(encoder, &dw_hdmi_rockchip_encoder_helper_funcs);
	FUNC10(drm, encoder, &dw_hdmi_rockchip_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC14(pdev, hdmi);

	hdmi->hdmi = FUNC12(pdev, encoder, plat_data);

	/*
	 * If dw_hdmi_bind() fails we'll never call dw_hdmi_unbind(),
	 * which would have called the encoder cleanup.  Do it manually.
	 */
	if (FUNC1(hdmi->hdmi)) {
		ret = FUNC2(hdmi->hdmi);
		FUNC8(encoder);
		FUNC3(hdmi->vpll_clk);
	}

	return ret;
}