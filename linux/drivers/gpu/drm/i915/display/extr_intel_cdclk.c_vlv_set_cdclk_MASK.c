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
struct intel_cdclk_state {int cdclk; int voltage_level; } ;
struct drm_i915_private {int hpll_freq; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUNIT_REG_BISOC ; 
 int /*<<< orphan*/  CCK_DISPLAY_CLOCK_CONTROL ; 
 int CCK_FREQUENCY_STATUS ; 
 int CCK_FREQUENCY_STATUS_SHIFT ; 
 int CCK_FREQUENCY_VALUES ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int DSPFREQGUAR_MASK ; 
 int DSPFREQGUAR_SHIFT ; 
 int DSPFREQSTAT_MASK ; 
 int DSPFREQSTAT_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  POWER_DOMAIN_DISPLAY_CORE ; 
 int /*<<< orphan*/  PUNIT_REG_DSPSSPM ; 
 int /*<<< orphan*/  VLV_IOSF_SB_BUNIT ; 
 int /*<<< orphan*/  VLV_IOSF_SB_CCK ; 
 int /*<<< orphan*/  VLV_IOSF_SB_PUNIT ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*) ; 
 int FUNC14 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int,int) ; 

__attribute__((used)) static void FUNC17(struct drm_i915_private *dev_priv,
			  const struct intel_cdclk_state *cdclk_state,
			  enum pipe pipe)
{
	int cdclk = cdclk_state->cdclk;
	u32 val, cmd = cdclk_state->voltage_level;
	intel_wakeref_t wakeref;

	switch (cdclk) {
	case 400000:
	case 333333:
	case 320000:
	case 266667:
	case 200000:
		break;
	default:
		FUNC3(cdclk);
		return;
	}

	/* There are cases where we can end up here with power domains
	 * off and a CDCLK frequency other than the minimum, like when
	 * issuing a modeset without actually changing any display after
	 * a system suspend.  So grab the display core domain, which covers
	 * the HW blocks needed for the following programming.
	 */
	wakeref = FUNC4(dev_priv, POWER_DOMAIN_DISPLAY_CORE);

	FUNC11(dev_priv,
			FUNC0(VLV_IOSF_SB_CCK) |
			FUNC0(VLV_IOSF_SB_BUNIT) |
			FUNC0(VLV_IOSF_SB_PUNIT));

	val = FUNC14(dev_priv, PUNIT_REG_DSPSSPM);
	val &= ~DSPFREQGUAR_MASK;
	val |= (cmd << DSPFREQGUAR_SHIFT);
	FUNC15(dev_priv, PUNIT_REG_DSPSSPM, val);
	if (FUNC16((FUNC14(dev_priv, PUNIT_REG_DSPSSPM) &
		      DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
		     50)) {
		FUNC2("timed out waiting for CDclk change\n");
	}

	if (cdclk == 400000) {
		u32 divider;

		divider = FUNC1(dev_priv->hpll_freq << 1,
					    cdclk) - 1;

		/* adjust cdclk divider */
		val = FUNC9(dev_priv, CCK_DISPLAY_CLOCK_CONTROL);
		val &= ~CCK_FREQUENCY_VALUES;
		val |= divider;
		FUNC10(dev_priv, CCK_DISPLAY_CLOCK_CONTROL, val);

		if (FUNC16((FUNC9(dev_priv, CCK_DISPLAY_CLOCK_CONTROL) &
			      CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
			     50))
			FUNC2("timed out waiting for CDclk change\n");
	}

	/* adjust self-refresh exit latency value */
	val = FUNC7(dev_priv, BUNIT_REG_BISOC);
	val &= ~0x7f;

	/*
	 * For high bandwidth configs, we set a higher latency in the bunit
	 * so that the core display fetch happens in time to avoid underruns.
	 */
	if (cdclk == 400000)
		val |= 4500 / 250; /* 4.5 usec */
	else
		val |= 3000 / 250; /* 3.0 usec */
	FUNC8(dev_priv, BUNIT_REG_BISOC, val);

	FUNC12(dev_priv,
			FUNC0(VLV_IOSF_SB_CCK) |
			FUNC0(VLV_IOSF_SB_BUNIT) |
			FUNC0(VLV_IOSF_SB_PUNIT));

	FUNC6(dev_priv);

	FUNC13(dev_priv);

	FUNC5(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
}