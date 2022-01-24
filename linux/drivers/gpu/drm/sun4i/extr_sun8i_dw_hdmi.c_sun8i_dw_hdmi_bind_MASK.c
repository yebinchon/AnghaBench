#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct dw_hdmi_plat_data {int /*<<< orphan*/  mode_valid; } ;
struct sun8i_dw_hdmi {scalar_t__ ddc_en; scalar_t__ regulator; scalar_t__ rst_ctrl; scalar_t__ clk_tmds; scalar_t__ hdmi; int /*<<< orphan*/  phy; TYPE_1__* quirks; struct drm_encoder encoder; TYPE_2__* dev; struct dw_hdmi_plat_data plat_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct drm_device {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (struct device*,char*) ; 
 struct sun8i_dw_hdmi* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,char*) ; 
 scalar_t__ FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct platform_device*,struct drm_encoder*,struct dw_hdmi_plat_data*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 TYPE_1__* FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device_node*) ; 
 struct device_node* FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct sun8i_dw_hdmi*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  sun8i_dw_hdmi_encoder_funcs ; 
 int /*<<< orphan*/  sun8i_dw_hdmi_encoder_helper_funcs ; 
 int FUNC25 (struct device*,struct platform_device**) ; 
 scalar_t__ FUNC26 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (struct sun8i_dw_hdmi*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC29 (struct sun8i_dw_hdmi*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct dw_hdmi_plat_data*) ; 
 struct platform_device* FUNC31 (struct device*) ; 

__attribute__((used)) static int FUNC32(struct device *dev, struct device *master,
			      void *data)
{
	struct platform_device *pdev = FUNC31(dev), *connector_pdev;
	struct dw_hdmi_plat_data *plat_data;
	struct drm_device *drm = data;
	struct device_node *phy_node;
	struct drm_encoder *encoder;
	struct sun8i_dw_hdmi *hdmi;
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	hdmi = FUNC6(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	plat_data = &hdmi->plat_data;
	hdmi->dev = &pdev->dev;
	encoder = &hdmi->encoder;

	hdmi->quirks = FUNC16(dev);

	encoder->possible_crtcs =
		FUNC26(drm, dev->of_node);
	/*
	 * If we failed to find the CRTC(s) which this encoder is
	 * supposed to be connected to, it's because the CRTC has
	 * not been registered yet.  Defer probing, and hope that
	 * the required CRTC is added later.
	 */
	if (encoder->possible_crtcs == 0)
		return -EPROBE_DEFER;

	hdmi->rst_ctrl = FUNC8(dev, "ctrl");
	if (FUNC0(hdmi->rst_ctrl)) {
		FUNC4(dev, "Could not get ctrl reset control\n");
		return FUNC1(hdmi->rst_ctrl);
	}

	hdmi->clk_tmds = FUNC5(dev, "tmds");
	if (FUNC0(hdmi->clk_tmds)) {
		FUNC4(dev, "Couldn't get the tmds clock\n");
		return FUNC1(hdmi->clk_tmds);
	}

	hdmi->regulator = FUNC7(dev, "hvcc");
	if (FUNC0(hdmi->regulator)) {
		FUNC4(dev, "Couldn't get regulator\n");
		return FUNC1(hdmi->regulator);
	}

	ret = FUNC25(dev, &connector_pdev);
	if (!ret) {
		hdmi->ddc_en = FUNC13(&connector_pdev->dev,
						  "ddc-en", GPIOD_OUT_HIGH);
		FUNC19(connector_pdev);

		if (FUNC0(hdmi->ddc_en)) {
			FUNC4(dev, "Couldn't get ddc-en gpio\n");
			return FUNC1(hdmi->ddc_en);
		}
	}

	ret = FUNC22(hdmi->regulator);
	if (ret) {
		FUNC4(dev, "Failed to enable regulator\n");
		goto err_unref_ddc_en;
	}

	FUNC15(hdmi->ddc_en, 1);

	ret = FUNC24(hdmi->rst_ctrl);
	if (ret) {
		FUNC4(dev, "Could not deassert ctrl reset control\n");
		goto err_disable_ddc_en;
	}

	ret = FUNC3(hdmi->clk_tmds);
	if (ret) {
		FUNC4(dev, "Could not enable tmds clock\n");
		goto err_assert_ctrl_reset;
	}

	phy_node = FUNC18(dev->of_node, "phys", 0);
	if (!phy_node) {
		FUNC4(dev, "Can't found PHY phandle\n");
		goto err_disable_clk_tmds;
	}

	ret = FUNC28(hdmi, phy_node);
	FUNC17(phy_node);
	if (ret) {
		FUNC4(dev, "Couldn't get the HDMI PHY\n");
		goto err_disable_clk_tmds;
	}

	FUNC10(encoder, &sun8i_dw_hdmi_encoder_helper_funcs);
	FUNC11(drm, encoder, &sun8i_dw_hdmi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC27(hdmi->phy);

	plat_data->mode_valid = hdmi->quirks->mode_valid;
	FUNC30(hdmi->phy, plat_data);

	FUNC20(pdev, hdmi);

	hdmi->hdmi = FUNC12(pdev, encoder, plat_data);

	/*
	 * If dw_hdmi_bind() fails we'll never call dw_hdmi_unbind(),
	 * which would have called the encoder cleanup.  Do it manually.
	 */
	if (FUNC0(hdmi->hdmi)) {
		ret = FUNC1(hdmi->hdmi);
		goto cleanup_encoder;
	}

	return 0;

cleanup_encoder:
	FUNC9(encoder);
	FUNC29(hdmi);
err_disable_clk_tmds:
	FUNC2(hdmi->clk_tmds);
err_assert_ctrl_reset:
	FUNC23(hdmi->rst_ctrl);
err_disable_ddc_en:
	FUNC15(hdmi->ddc_en, 0);
	FUNC21(hdmi->regulator);
err_unref_ddc_en:
	if (hdmi->ddc_en)
		FUNC14(hdmi->ddc_en);

	return ret;
}