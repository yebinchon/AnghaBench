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
struct drm_i915_private {TYPE_1__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  INVALID_PIPE ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,struct intel_cdclk_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	struct intel_cdclk_state cdclk_state;

	FUNC4(dev_priv);

	if (dev_priv->cdclk.hw.cdclk != 0 &&
	    dev_priv->cdclk.hw.vco != 0)
		return;

	cdclk_state = dev_priv->cdclk.hw;

	/*
	 * FIXME:
	 * - The initial CDCLK needs to be read from VBT.
	 *   Need to make this change after VBT has changes for BXT.
	 */
	if (FUNC0(dev_priv)) {
		cdclk_state.cdclk = FUNC6(0);
		cdclk_state.vco = FUNC7(dev_priv, cdclk_state.cdclk);
	} else {
		cdclk_state.cdclk = FUNC1(0);
		cdclk_state.vco = FUNC3(dev_priv, cdclk_state.cdclk);
	}
	cdclk_state.voltage_level = FUNC2(cdclk_state.cdclk);

	FUNC5(dev_priv, &cdclk_state, INVALID_PIPE);
}