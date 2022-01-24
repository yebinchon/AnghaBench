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
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int ref; int cdclk; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {int max_cdclk_freq; int skl_preferred_vco_freq; int max_dotclk_freq; TYPE_2__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUSE_STRAP ; 
 int HSW_CDCLK_LIMIT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SKL_DFSM ; 
 scalar_t__ SKL_DFSM_CDCLK_LIMIT_450 ; 
 scalar_t__ SKL_DFSM_CDCLK_LIMIT_540 ; 
 scalar_t__ SKL_DFSM_CDCLK_LIMIT_675 ; 
 int SKL_DFSM_CDCLK_LIMIT_MASK ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int FUNC14 (struct drm_i915_private*) ; 
 int FUNC15 (int,int) ; 

void FUNC16(struct drm_i915_private *dev_priv)
{
	if (FUNC9(dev_priv)) {
		if (dev_priv->cdclk.hw.ref == 24000)
			dev_priv->max_cdclk_freq = 552000;
		else
			dev_priv->max_cdclk_freq = 556800;
	} else if (FUNC2(dev_priv) >= 11) {
		if (dev_priv->cdclk.hw.ref == 24000)
			dev_priv->max_cdclk_freq = 648000;
		else
			dev_priv->max_cdclk_freq = 652800;
	} else if (FUNC7(dev_priv)) {
		dev_priv->max_cdclk_freq = 528000;
	} else if (FUNC11(dev_priv)) {
		u32 limit = FUNC1(SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
		int max_cdclk, vco;

		vco = dev_priv->skl_preferred_vco_freq;
		FUNC13(vco != 8100000 && vco != 8640000);

		/*
		 * Use the lower (vco 8640) cdclk values as a
		 * first guess. skl_calc_cdclk() will correct it
		 * if the preferred vco is 8100 instead.
		 */
		if (limit == SKL_DFSM_CDCLK_LIMIT_675)
			max_cdclk = 617143;
		else if (limit == SKL_DFSM_CDCLK_LIMIT_540)
			max_cdclk = 540000;
		else if (limit == SKL_DFSM_CDCLK_LIMIT_450)
			max_cdclk = 432000;
		else
			max_cdclk = 308571;

		dev_priv->max_cdclk_freq = FUNC15(max_cdclk, vco);
	} else if (FUNC10(dev_priv)) {
		dev_priv->max_cdclk_freq = 316800;
	} else if (FUNC6(dev_priv)) {
		dev_priv->max_cdclk_freq = 624000;
	} else if (FUNC5(dev_priv))  {
		/*
		 * FIXME with extra cooling we can allow
		 * 540 MHz for ULX and 675 Mhz for ULT.
		 * How can we know if extra cooling is
		 * available? PCI ID, VTB, something else?
		 */
		if (FUNC1(FUSE_STRAP) & HSW_CDCLK_LIMIT)
			dev_priv->max_cdclk_freq = 450000;
		else if (FUNC4(dev_priv))
			dev_priv->max_cdclk_freq = 450000;
		else if (FUNC3(dev_priv))
			dev_priv->max_cdclk_freq = 540000;
		else
			dev_priv->max_cdclk_freq = 675000;
	} else if (FUNC8(dev_priv)) {
		dev_priv->max_cdclk_freq = 320000;
	} else if (FUNC12(dev_priv)) {
		dev_priv->max_cdclk_freq = 400000;
	} else {
		/* otherwise assume cdclk is fixed */
		dev_priv->max_cdclk_freq = dev_priv->cdclk.hw.cdclk;
	}

	dev_priv->max_dotclk_freq = FUNC14(dev_priv);

	FUNC0("Max CD clock rate: %d kHz\n",
			 dev_priv->max_cdclk_freq);

	FUNC0("Max dotclock rate: %d kHz\n",
			 dev_priv->max_dotclk_freq);
}