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
struct intel_cdclk_state {unsigned int cdclk; unsigned int vco; int /*<<< orphan*/  voltage_level; } ;
struct TYPE_3__ {unsigned int vco; int /*<<< orphan*/  voltage_level; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  CDCLK_CTL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ICL_CDCLK_CD2X_PIPE_NONE ; 
 int /*<<< orphan*/  SKL_CDCLK_PREPARE_FOR_CHANGE ; 
 int /*<<< orphan*/  SKL_CDCLK_READY_FOR_CHANGE ; 
 int /*<<< orphan*/  SKL_PCODE_CDCLK_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv,
			  const struct intel_cdclk_state *cdclk_state,
			  enum pipe pipe)
{
	unsigned int cdclk = cdclk_state->cdclk;
	unsigned int vco = cdclk_state->vco;
	int ret;

	ret = FUNC7(dev_priv, SKL_PCODE_CDCLK_CONTROL,
				SKL_CDCLK_PREPARE_FOR_CHANGE,
				SKL_CDCLK_READY_FOR_CHANGE,
				SKL_CDCLK_READY_FOR_CHANGE, 3);
	if (ret) {
		FUNC0("Failed to inform PCU about cdclk change (%d)\n",
			  ret);
		return;
	}

	if (dev_priv->cdclk.hw.vco != 0 &&
	    dev_priv->cdclk.hw.vco != vco)
		FUNC2(dev_priv);

	if (dev_priv->cdclk.hw.vco != vco)
		FUNC3(dev_priv, vco);

	/*
	 * On ICL CD2X_DIV can only be 1, so we'll never end up changing the
	 * divider here synchronized to a pipe while CDCLK is on, nor will we
	 * need the corresponding vblank wait.
	 */
	FUNC1(CDCLK_CTL, ICL_CDCLK_CD2X_PIPE_NONE |
			      FUNC6(cdclk));

	FUNC5(dev_priv, SKL_PCODE_CDCLK_CONTROL,
				cdclk_state->voltage_level);

	FUNC4(dev_priv);

	/*
	 * Can't read out the voltage level :(
	 * Let's just assume everything is as expected.
	 */
	dev_priv->cdclk.hw.voltage_level = cdclk_state->voltage_level;
}