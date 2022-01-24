#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct dw_hdmi_plat_data {int dummy; } ;
struct dw_hdmi {int /*<<< orphan*/  bridge; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dw_hdmi* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dw_hdmi*) ; 
 struct dw_hdmi* FUNC3 (struct platform_device*,struct dw_hdmi_plat_data const*) ; 
 int FUNC4 (struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_hdmi*) ; 

struct dw_hdmi *FUNC6(struct platform_device *pdev,
			     struct drm_encoder *encoder,
			     const struct dw_hdmi_plat_data *plat_data)
{
	struct dw_hdmi *hdmi;
	int ret;

	hdmi = FUNC3(pdev, plat_data);
	if (FUNC2(hdmi))
		return hdmi;

	ret = FUNC4(encoder, &hdmi->bridge, NULL);
	if (ret) {
		FUNC5(hdmi);
		FUNC0("Failed to initialize bridge with drm\n");
		return FUNC1(ret);
	}

	return hdmi;
}