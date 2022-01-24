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
struct intel_cdclk_state {scalar_t__ cdclk; scalar_t__ vco; int /*<<< orphan*/  voltage_level; } ;
struct TYPE_2__ {struct intel_cdclk_state hw; } ;
struct drm_i915_private {scalar_t__ skl_preferred_vco_freq; TYPE_1__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_PIPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,struct intel_cdclk_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	struct intel_cdclk_state cdclk_state;

	FUNC2(dev_priv);

	if (dev_priv->cdclk.hw.cdclk != 0 &&
	    dev_priv->cdclk.hw.vco != 0) {
		/*
		 * Use the current vco as our initial
		 * guess as to what the preferred vco is.
		 */
		if (dev_priv->skl_preferred_vco_freq == 0)
			FUNC4(dev_priv,
						    dev_priv->cdclk.hw.vco);
		return;
	}

	cdclk_state = dev_priv->cdclk.hw;

	cdclk_state.vco = dev_priv->skl_preferred_vco_freq;
	if (cdclk_state.vco == 0)
		cdclk_state.vco = 8100000;
	cdclk_state.cdclk = FUNC0(0, cdclk_state.vco);
	cdclk_state.voltage_level = FUNC1(cdclk_state.cdclk);

	FUNC3(dev_priv, &cdclk_state, INVALID_PIPE);
}