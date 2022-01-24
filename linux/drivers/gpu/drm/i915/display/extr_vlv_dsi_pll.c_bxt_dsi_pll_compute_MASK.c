#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dsi {int /*<<< orphan*/  lane_count; int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  pclk; } ;
struct TYPE_3__ {int ctrl; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int BXT_DSIA_16X_BY2 ; 
 int BXT_DSIC_16X_BY2 ; 
 int BXT_DSI_PLL_PVD_RATIO_1 ; 
 int BXT_DSI_PLL_RATIO_MAX ; 
 int BXT_DSI_PLL_RATIO_MIN ; 
 int /*<<< orphan*/  BXT_REF_CLOCK_KHZ ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int ECHRNG ; 
 int GLK_DSI_PLL_RATIO_MAX ; 
 int GLK_DSI_PLL_RATIO_MIN ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_dsi* FUNC5 (TYPE_2__*) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct intel_encoder *encoder,
			struct intel_crtc_state *config)
{
	struct drm_i915_private *dev_priv = FUNC6(encoder->base.dev);
	struct intel_dsi *intel_dsi = FUNC5(&encoder->base);
	u8 dsi_ratio, dsi_ratio_min, dsi_ratio_max;
	u32 dsi_clk;

	dsi_clk = FUNC4(intel_dsi->pclk, intel_dsi->pixel_format,
				    intel_dsi->lane_count);

	/*
	 * From clock diagram, to get PLL ratio divider, divide double of DSI
	 * link rate (i.e., 2*8x=16x frequency value) by ref clock. Make sure to
	 * round 'up' the result
	 */
	dsi_ratio = FUNC0(dsi_clk * 2, BXT_REF_CLOCK_KHZ);

	if (FUNC3(dev_priv)) {
		dsi_ratio_min = BXT_DSI_PLL_RATIO_MIN;
		dsi_ratio_max = BXT_DSI_PLL_RATIO_MAX;
	} else {
		dsi_ratio_min = GLK_DSI_PLL_RATIO_MIN;
		dsi_ratio_max = GLK_DSI_PLL_RATIO_MAX;
	}

	if (dsi_ratio < dsi_ratio_min || dsi_ratio > dsi_ratio_max) {
		FUNC2("Cant get a suitable ratio from DSI PLL ratios\n");
		return -ECHRNG;
	} else
		FUNC1("DSI PLL calculation is Done!!\n");

	/*
	 * Program DSI ratio and Select MIPIC and MIPIA PLL output as 8x
	 * Spec says both have to be programmed, even if one is not getting
	 * used. Configure MIPI_CLOCK_CTL dividers in modeset
	 */
	config->dsi_pll.ctrl = dsi_ratio | BXT_DSIA_16X_BY2 | BXT_DSIC_16X_BY2;

	/* As per recommendation from hardware team,
	 * Prog PVD ratio =1 if dsi ratio <= 50
	 */
	if (FUNC3(dev_priv) && dsi_ratio <= 50)
		config->dsi_pll.ctrl |= BXT_DSI_PLL_PVD_RATIO_1;

	return 0;
}