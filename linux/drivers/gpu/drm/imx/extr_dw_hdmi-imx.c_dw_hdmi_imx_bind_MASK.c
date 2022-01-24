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
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct dw_hdmi_plat_data* data; } ;
struct drm_encoder {scalar_t__ possible_crtcs; } ;
struct imx_hdmi {int /*<<< orphan*/  hdmi; struct drm_encoder encoder; TYPE_1__* dev; } ;
struct dw_hdmi_plat_data {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct imx_hdmi* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct drm_encoder*,struct dw_hdmi_plat_data const*) ; 
 int /*<<< orphan*/  dw_hdmi_imx_dt_ids ; 
 int /*<<< orphan*/  dw_hdmi_imx_encoder_funcs ; 
 int /*<<< orphan*/  dw_hdmi_imx_encoder_helper_funcs ; 
 int FUNC8 (struct imx_hdmi*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct imx_hdmi*) ; 
 struct platform_device* FUNC11 (struct device*) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct device *master,
			    void *data)
{
	struct platform_device *pdev = FUNC11(dev);
	const struct dw_hdmi_plat_data *plat_data;
	const struct of_device_id *match;
	struct drm_device *drm = data;
	struct drm_encoder *encoder;
	struct imx_hdmi *hdmi;
	int ret;

	if (!pdev->dev.of_node)
		return -ENODEV;

	hdmi = FUNC2(&pdev->dev, sizeof(*hdmi), GFP_KERNEL);
	if (!hdmi)
		return -ENOMEM;

	match = FUNC9(dw_hdmi_imx_dt_ids, pdev->dev.of_node);
	plat_data = match->data;
	hdmi->dev = &pdev->dev;
	encoder = &hdmi->encoder;

	encoder->possible_crtcs = FUNC6(drm, dev->of_node);
	/*
	 * If we failed to find the CRTC(s) which this encoder is
	 * supposed to be connected to, it's because the CRTC has
	 * not been registered yet.  Defer probing, and hope that
	 * the required CRTC is added later.
	 */
	if (encoder->possible_crtcs == 0)
		return -EPROBE_DEFER;

	ret = FUNC8(hdmi);
	if (ret < 0)
		return ret;

	FUNC4(encoder, &dw_hdmi_imx_encoder_helper_funcs);
	FUNC5(drm, encoder, &dw_hdmi_imx_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC10(pdev, hdmi);

	hdmi->hdmi = FUNC7(pdev, encoder, plat_data);

	/*
	 * If dw_hdmi_bind() fails we'll never call dw_hdmi_unbind(),
	 * which would have called the encoder cleanup.  Do it manually.
	 */
	if (FUNC0(hdmi->hdmi)) {
		ret = FUNC1(hdmi->hdmi);
		FUNC3(encoder);
	}

	return ret;
}