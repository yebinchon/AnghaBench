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
struct TYPE_4__ {int /*<<< orphan*/  enable; TYPE_1__* crtc; } ;
struct intel_crtc_state {int port_clock; int lane_count; scalar_t__ has_audio; int /*<<< orphan*/  pixel_rate; TYPE_2__ base; } ;
struct drm_i915_private {int max_cdclk_freq; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int EINVAL ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC10 (struct intel_crtc_state const*) ; 
 scalar_t__ FUNC11 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int) ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv =
		FUNC14(crtc_state->base.crtc->dev);
	int min_cdclk;

	if (!crtc_state->base.enable)
		return 0;

	min_cdclk = FUNC12(dev_priv, crtc_state->pixel_rate);

	/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
	if (FUNC3(dev_priv) && FUNC9(crtc_state))
		min_cdclk = FUNC0(min_cdclk * 100, 95);

	/* BSpec says "Do not use DisplayPort with CDCLK less than 432 MHz,
	 * audio enabled, port width x4, and link rate HBR2 (5.4 GHz), or else
	 * there may be audio corruption or screen corruption." This cdclk
	 * restriction for GLK is 316.8 MHz.
	 */
	if (FUNC10(crtc_state) &&
	    crtc_state->has_audio &&
	    crtc_state->port_clock >= 540000 &&
	    crtc_state->lane_count == 4) {
		if (FUNC4(dev_priv) || FUNC6(dev_priv)) {
			/* Display WA #1145: glk,cnl */
			min_cdclk = FUNC13(316800, min_cdclk);
		} else if (FUNC7(dev_priv, 9) || FUNC3(dev_priv)) {
			/* Display WA #1144: skl,bxt */
			min_cdclk = FUNC13(432000, min_cdclk);
		}
	}

	/*
	 * According to BSpec, "The CD clock frequency must be at least twice
	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
	 */
	if (crtc_state->has_audio && FUNC2(dev_priv) >= 9)
		min_cdclk = FUNC13(2 * 96000, min_cdclk);

	/*
	 * "For DP audio configuration, cdclk frequency shall be set to
	 *  meet the following requirements:
	 *  DP Link Frequency(MHz) | Cdclk frequency(MHz)
	 *  270                    | 320 or higher
	 *  162                    | 200 or higher"
	 */
	if ((FUNC8(dev_priv) || FUNC5(dev_priv)) &&
	    FUNC10(crtc_state) && crtc_state->has_audio)
		min_cdclk = FUNC13(crtc_state->port_clock, min_cdclk);

	/*
	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
	 * than 320000KHz.
	 */
	if (FUNC11(crtc_state, INTEL_OUTPUT_DSI) &&
	    FUNC8(dev_priv))
		min_cdclk = FUNC13(320000, min_cdclk);

	/*
	 * On Geminilake once the CDCLK gets as low as 79200
	 * picture gets unstable, despite that values are
	 * correct for DSI PLL and DE PLL.
	 */
	if (FUNC11(crtc_state, INTEL_OUTPUT_DSI) &&
	    FUNC6(dev_priv))
		min_cdclk = FUNC13(158400, min_cdclk);

	if (min_cdclk > dev_priv->max_cdclk_freq) {
		FUNC1("required cdclk (%d kHz) exceeds max (%d kHz)\n",
			      min_cdclk, dev_priv->max_cdclk_freq);
		return -EINVAL;
	}

	return min_cdclk;
}