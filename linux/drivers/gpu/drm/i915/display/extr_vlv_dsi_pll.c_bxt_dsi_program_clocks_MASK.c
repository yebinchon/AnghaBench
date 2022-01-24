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
typedef  int u32 ;
struct TYPE_2__ {int ctrl; } ;
struct intel_crtc_state {TYPE_1__ dsi_pll; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int BXT_DSI_PLL_RATIO_MASK ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  BXT_MIPI_CLOCK_CTL ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int) ; 
 int BXT_REF_CLOCK_KHZ ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int RX_DIVIDER_BIT_1_2 ; 
 int RX_DIVIDER_BIT_3_4 ; 
 struct drm_i915_private* FUNC11 (struct drm_device*) ; 

__attribute__((used)) static void FUNC12(struct drm_device *dev, enum port port,
				   const struct intel_crtc_state *config)
{
	struct drm_i915_private *dev_priv = FUNC11(dev);
	u32 tmp;
	u32 dsi_rate = 0;
	u32 pll_ratio = 0;
	u32 rx_div;
	u32 tx_div;
	u32 rx_div_upper;
	u32 rx_div_lower;
	u32 mipi_8by3_divider;

	/* Clear old configurations */
	tmp = FUNC9(BXT_MIPI_CLOCK_CTL);
	tmp &= ~(FUNC7(port));
	tmp &= ~(FUNC5(port));
	tmp &= ~(FUNC1(port));
	tmp &= ~(FUNC3(port));

	/* Get the current DSI rate(actual) */
	pll_ratio = config->dsi_pll.ctrl & BXT_DSI_PLL_RATIO_MASK;
	dsi_rate = (BXT_REF_CLOCK_KHZ * pll_ratio) / 2;

	/*
	 * tx clock should be <= 20MHz and the div value must be
	 * subtracted by 1 as per bspec
	 */
	tx_div = FUNC8(dsi_rate, 20000) - 1;
	/*
	 * rx clock should be <= 150MHz and the div value must be
	 * subtracted by 1 as per bspec
	 */
	rx_div = FUNC8(dsi_rate, 150000) - 1;

	/*
	 * rx divider value needs to be updated in the
	 * two differnt bit fields in the register hence splitting the
	 * rx divider value accordingly
	 */
	rx_div_lower = rx_div & RX_DIVIDER_BIT_1_2;
	rx_div_upper = (rx_div & RX_DIVIDER_BIT_3_4) >> 2;

	mipi_8by3_divider = 0x2;

	tmp |= FUNC0(port, mipi_8by3_divider);
	tmp |= FUNC6(port, tx_div);
	tmp |= FUNC2(port, rx_div_lower);
	tmp |= FUNC4(port, rx_div_upper);

	FUNC10(BXT_MIPI_CLOCK_CTL, tmp);
}