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
struct intel_limit {int dummy; } ;
struct intel_crtc_state {int /*<<< orphan*/  dpll; int /*<<< orphan*/  port_clock; int /*<<< orphan*/  clock_set; int /*<<< orphan*/  dpll_hw_state; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_2__ base; } ;
struct TYPE_3__ {int lvds_ssc_freq; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc*,struct intel_crtc_state*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 struct intel_limit intel_limits_pineview_lvds ; 
 struct intel_limit intel_limits_pineview_sdvo ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_limit const*,struct intel_crtc_state*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC7 (struct drm_device*) ; 

__attribute__((used)) static int FUNC8(struct intel_crtc *crtc,
				  struct intel_crtc_state *crtc_state)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC7(dev);
	const struct intel_limit *limit;
	int refclk = 96000;

	FUNC5(&crtc_state->dpll_hw_state, 0,
	       sizeof(crtc_state->dpll_hw_state));

	if (FUNC3(crtc_state, INTEL_OUTPUT_LVDS)) {
		if (FUNC4(dev_priv)) {
			refclk = dev_priv->vbt.lvds_ssc_freq;
			FUNC0("using SSC reference clock of %d kHz\n", refclk);
		}

		limit = &intel_limits_pineview_lvds;
	} else {
		limit = &intel_limits_pineview_sdvo;
	}

	if (!crtc_state->clock_set &&
	    !FUNC6(limit, crtc_state, crtc_state->port_clock,
				refclk, NULL, &crtc_state->dpll)) {
		FUNC1("Couldn't find PLL settings for mode!\n");
		return -EINVAL;
	}

	FUNC2(crtc, crtc_state, NULL);

	return 0;
}