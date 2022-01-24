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
struct intel_cdclk_state {int cdclk; int vco; int voltage_level; } ;
struct TYPE_3__ {int bypass; int vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int BXT_CDCLK_CD2X_DIV_SEL_1 ; 
 int BXT_CDCLK_CD2X_DIV_SEL_1_5 ; 
 int BXT_CDCLK_CD2X_DIV_SEL_2 ; 
 int BXT_CDCLK_CD2X_DIV_SEL_4 ; 
 int FUNC0 (int) ; 
 int BXT_CDCLK_CD2X_PIPE_NONE ; 
 int BXT_CDCLK_SSA_PRECHARGE_ENABLE ; 
 int /*<<< orphan*/  CDCLK_CTL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  HSW_PCODE_DE_WRITE_FREQ_REQ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int INVALID_PIPE ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 
 int FUNC11 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv,
			  const struct intel_cdclk_state *cdclk_state,
			  enum pipe pipe)
{
	int cdclk = cdclk_state->cdclk;
	int vco = cdclk_state->vco;
	u32 val, divider;
	int ret;

	/* cdclk = vco / 2 / div{1,1.5,2,4} */
	switch (FUNC1(vco, cdclk)) {
	default:
		FUNC6(cdclk != dev_priv->cdclk.hw.bypass);
		FUNC6(vco != 0);
		/* fall through */
	case 2:
		divider = BXT_CDCLK_CD2X_DIV_SEL_1;
		break;
	case 3:
		FUNC5(FUNC4(dev_priv), "Unsupported divider\n");
		divider = BXT_CDCLK_CD2X_DIV_SEL_1_5;
		break;
	case 4:
		divider = BXT_CDCLK_CD2X_DIV_SEL_2;
		break;
	case 8:
		divider = BXT_CDCLK_CD2X_DIV_SEL_4;
		break;
	}

	/*
	 * Inform power controller of upcoming frequency change. BSpec
	 * requires us to wait up to 150usec, but that leads to timeouts;
	 * the 2ms used here is based on experiment.
	 */
	ret = FUNC11(dev_priv,
					      HSW_PCODE_DE_WRITE_FREQ_REQ,
					      0x80000000, 150, 2);
	if (ret) {
		FUNC2("PCode CDCLK freq change notify failed (err %d, freq %d)\n",
			  ret, cdclk);
		return;
	}

	if (dev_priv->cdclk.hw.vco != 0 &&
	    dev_priv->cdclk.hw.vco != vco)
		FUNC7(dev_priv);

	if (dev_priv->cdclk.hw.vco != vco)
		FUNC8(dev_priv, vco);

	val = divider | FUNC12(cdclk);
	if (pipe == INVALID_PIPE)
		val |= BXT_CDCLK_CD2X_PIPE_NONE;
	else
		val |= FUNC0(pipe);
	/*
	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
	 * enable otherwise.
	 */
	if (cdclk >= 500000)
		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
	FUNC3(CDCLK_CTL, val);

	if (pipe != INVALID_PIPE)
		FUNC10(dev_priv, pipe);

	/*
	 * The timeout isn't specified, the 2ms used here is based on
	 * experiment.
	 * FIXME: Waiting for the request completion could be delayed until
	 * the next PCODE request based on BSpec.
	 */
	ret = FUNC11(dev_priv,
					      HSW_PCODE_DE_WRITE_FREQ_REQ,
					      cdclk_state->voltage_level, 150, 2);
	if (ret) {
		FUNC2("PCode CDCLK freq set failed, (err %d, freq %d)\n",
			  ret, cdclk);
		return;
	}

	FUNC9(dev_priv);
}