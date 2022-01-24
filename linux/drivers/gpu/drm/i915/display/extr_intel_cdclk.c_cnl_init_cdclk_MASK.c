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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_cdclk_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	struct intel_cdclk_state cdclk_state;

	FUNC3(dev_priv);

	if (dev_priv->cdclk.hw.cdclk != 0 &&
	    dev_priv->cdclk.hw.vco != 0)
		return;

	cdclk_state = dev_priv->cdclk.hw;

	cdclk_state.cdclk = FUNC0(0);
	cdclk_state.vco = FUNC2(dev_priv, cdclk_state.cdclk);
	cdclk_state.voltage_level = FUNC1(cdclk_state.cdclk);

	FUNC4(dev_priv, &cdclk_state, INVALID_PIPE);
}