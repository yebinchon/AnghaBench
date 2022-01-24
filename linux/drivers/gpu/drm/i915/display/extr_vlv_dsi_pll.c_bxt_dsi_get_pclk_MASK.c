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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dsi {int lane_count; int /*<<< orphan*/  pixel_format; } ;
struct TYPE_3__ {int ctrl; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_DSI_PLL_CTL ; 
 int BXT_DSI_PLL_RATIO_MASK ; 
 int BXT_REF_CLOCK_KHZ ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_dsi* FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

u32 FUNC6(struct intel_encoder *encoder,
		     struct intel_crtc_state *config)
{
	u32 pclk;
	u32 dsi_clk;
	u32 dsi_ratio;
	struct intel_dsi *intel_dsi = FUNC3(&encoder->base);
	struct drm_i915_private *dev_priv = FUNC5(encoder->base.dev);
	int bpp = FUNC4(intel_dsi->pixel_format);

	config->dsi_pll.ctrl = FUNC2(BXT_DSI_PLL_CTL);

	dsi_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;

	dsi_clk = (dsi_ratio * BXT_REF_CLOCK_KHZ) / 2;

	pclk = FUNC0(dsi_clk * intel_dsi->lane_count, bpp);

	FUNC1("Calculated pclk=%u\n", pclk);
	return pclk;
}