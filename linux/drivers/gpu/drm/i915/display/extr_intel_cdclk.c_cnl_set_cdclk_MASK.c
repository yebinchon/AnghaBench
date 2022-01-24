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
struct intel_cdclk_state {int cdclk; int vco; int /*<<< orphan*/  voltage_level; } ;
struct TYPE_3__ {int bypass; int vco; int /*<<< orphan*/  voltage_level; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int BXT_CDCLK_CD2X_DIV_SEL_1 ; 
 int BXT_CDCLK_CD2X_DIV_SEL_2 ; 
 int FUNC0 (int) ; 
 int BXT_CDCLK_CD2X_PIPE_NONE ; 
 int /*<<< orphan*/  CDCLK_CTL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int INVALID_PIPE ; 
 int /*<<< orphan*/  SKL_CDCLK_PREPARE_FOR_CHANGE ; 
 int /*<<< orphan*/  SKL_CDCLK_READY_FOR_CHANGE ; 
 int /*<<< orphan*/  SKL_PCODE_CDCLK_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int) ; 
 int FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct drm_i915_private *dev_priv,
			  const struct intel_cdclk_state *cdclk_state,
			  enum pipe pipe)
{
	int cdclk = cdclk_state->cdclk;
	int vco = cdclk_state->vco;
	u32 val, divider;
	int ret;

	ret = FUNC11(dev_priv, SKL_PCODE_CDCLK_CONTROL,
				SKL_CDCLK_PREPARE_FOR_CHANGE,
				SKL_CDCLK_READY_FOR_CHANGE,
				SKL_CDCLK_READY_FOR_CHANGE, 3);
	if (ret) {
		FUNC2("Failed to inform PCU about cdclk change (%d)\n",
			  ret);
		return;
	}

	/* cdclk = vco / 2 / div{1,2} */
	switch (FUNC1(vco, cdclk)) {
	default:
		FUNC4(cdclk != dev_priv->cdclk.hw.bypass);
		FUNC4(vco != 0);
		/* fall through */
	case 2:
		divider = BXT_CDCLK_CD2X_DIV_SEL_1;
		break;
	case 4:
		divider = BXT_CDCLK_CD2X_DIV_SEL_2;
		break;
	}

	if (dev_priv->cdclk.hw.vco != 0 &&
	    dev_priv->cdclk.hw.vco != vco)
		FUNC5(dev_priv);

	if (dev_priv->cdclk.hw.vco != vco)
		FUNC6(dev_priv, vco);

	val = divider | FUNC10(cdclk);
	if (pipe == INVALID_PIPE)
		val |= BXT_CDCLK_CD2X_PIPE_NONE;
	else
		val |= FUNC0(pipe);
	FUNC3(CDCLK_CTL, val);

	if (pipe != INVALID_PIPE)
		FUNC8(dev_priv, pipe);

	/* inform PCU of the change */
	FUNC9(dev_priv, SKL_PCODE_CDCLK_CONTROL,
				cdclk_state->voltage_level);

	FUNC7(dev_priv);

	/*
	 * Can't read out the voltage level :(
	 * Let's just assume everything is as expected.
	 */
	dev_priv->cdclk.hw.voltage_level = cdclk_state->voltage_level;
}