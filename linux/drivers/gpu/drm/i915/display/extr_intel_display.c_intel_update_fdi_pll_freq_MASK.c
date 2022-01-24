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
typedef  int u32 ;
struct drm_i915_private {int fdi_pll_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FDI_PLL_BIOS_0 ; 
 int FDI_PLL_FB_CLOCK_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	if (FUNC2(dev_priv, 5)) {
		u32 fdi_pll_clk =
			FUNC1(FDI_PLL_BIOS_0) & FDI_PLL_FB_CLOCK_MASK;

		dev_priv->fdi_pll_freq = (fdi_pll_clk + 2) * 10000;
	} else if (FUNC2(dev_priv, 6) || FUNC3(dev_priv)) {
		dev_priv->fdi_pll_freq = 270000;
	} else {
		return;
	}

	FUNC0("FDI PLL freq=%d\n", dev_priv->fdi_pll_freq);
}