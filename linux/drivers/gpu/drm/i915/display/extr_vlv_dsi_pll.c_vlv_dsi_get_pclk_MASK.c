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
struct TYPE_3__ {int ctrl; int div; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  CCK_REG_DSI_PLL_CONTROL ; 
 int /*<<< orphan*/  CCK_REG_DSI_PLL_DIVIDER ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int DSI_PLL_LOCK ; 
 int DSI_PLL_M1_DIV_MASK ; 
 int DSI_PLL_M1_DIV_SHIFT ; 
 int DSI_PLL_N1_DIV_MASK ; 
 int DSI_PLL_N1_DIV_SHIFT ; 
 int DSI_PLL_P1_POST_DIV_MASK ; 
 int DSI_PLL_P1_POST_DIV_SHIFT ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 struct intel_dsi* FUNC5 (TYPE_2__*) ; 
 int* lfsr_converts ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

u32 FUNC11(struct intel_encoder *encoder,
		     struct intel_crtc_state *config)
{
	struct drm_i915_private *dev_priv = FUNC7(encoder->base.dev);
	struct intel_dsi *intel_dsi = FUNC5(&encoder->base);
	int bpp = FUNC6(intel_dsi->pixel_format);
	u32 dsi_clock, pclk;
	u32 pll_ctl, pll_div;
	u32 m = 0, p = 0, n;
	int refclk = FUNC4(dev_priv) ? 100000 : 25000;
	int i;

	FUNC2("\n");

	FUNC8(dev_priv);
	pll_ctl = FUNC10(dev_priv, CCK_REG_DSI_PLL_CONTROL);
	pll_div = FUNC10(dev_priv, CCK_REG_DSI_PLL_DIVIDER);
	FUNC9(dev_priv);

	config->dsi_pll.ctrl = pll_ctl & ~DSI_PLL_LOCK;
	config->dsi_pll.div = pll_div;

	/* mask out other bits and extract the P1 divisor */
	pll_ctl &= DSI_PLL_P1_POST_DIV_MASK;
	pll_ctl = pll_ctl >> (DSI_PLL_P1_POST_DIV_SHIFT - 2);

	/* N1 divisor */
	n = (pll_div & DSI_PLL_N1_DIV_MASK) >> DSI_PLL_N1_DIV_SHIFT;
	n = 1 << n; /* register has log2(N1) */

	/* mask out the other bits and extract the M1 divisor */
	pll_div &= DSI_PLL_M1_DIV_MASK;
	pll_div = pll_div >> DSI_PLL_M1_DIV_SHIFT;

	while (pll_ctl) {
		pll_ctl = pll_ctl >> 1;
		p++;
	}
	p--;

	if (!p) {
		FUNC3("wrong P1 divisor\n");
		return 0;
	}

	for (i = 0; i < FUNC0(lfsr_converts); i++) {
		if (lfsr_converts[i] == pll_div)
			break;
	}

	if (i == FUNC0(lfsr_converts)) {
		FUNC3("wrong m_seed programmed\n");
		return 0;
	}

	m = i + 62;

	dsi_clock = (m * refclk) / (p * n);

	pclk = FUNC1(dsi_clock * intel_dsi->lane_count, bpp);

	return pclk;
}