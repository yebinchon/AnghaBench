#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_dp {scalar_t__* dpcd; scalar_t__* edp_dpcd; int* sink_rates; int num_sink_rates; int use_rate_select; int /*<<< orphan*/  aux; int /*<<< orphan*/  desc; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  sink_rates ;
typedef  scalar_t__ __le16 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct TYPE_6__ {TYPE_2__ base; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 size_t DP_DPCD_REV ; 
 scalar_t__ DP_EDP_14 ; 
 int /*<<< orphan*/  DP_EDP_DPCD_REV ; 
 int DP_MAX_SUPPORTED_RATES ; 
 int /*<<< orphan*/  DP_SUPPORTED_LINK_RATES ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__*) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__* FUNC5 (struct intel_dp*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_dp*) ; 
 int FUNC14 (scalar_t__) ; 
 struct drm_i915_private* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC16(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv =
		FUNC15(FUNC5(intel_dp)->base.base.dev);

	/* this function is meant to be called only once */
	FUNC4(intel_dp->dpcd[DP_DPCD_REV] != 0);

	if (!FUNC10(intel_dp))
		return false;

	FUNC8(&intel_dp->aux, &intel_dp->desc,
			 FUNC7(intel_dp->dpcd));

	/*
	 * Read the eDP display control registers.
	 *
	 * Do this independent of DP_DPCD_DISPLAY_CONTROL_CAPABLE bit in
	 * DP_EDP_CONFIGURATION_CAP, because some buggy displays do not have it
	 * set, but require eDP 1.4+ detection (e.g. for supported link rates
	 * method). The display control registers should read zero if they're
	 * not supported anyway.
	 */
	if (FUNC6(&intel_dp->aux, DP_EDP_DPCD_REV,
			     intel_dp->edp_dpcd, sizeof(intel_dp->edp_dpcd)) ==
			     sizeof(intel_dp->edp_dpcd))
		FUNC1("eDP DPCD: %*ph\n", (int) sizeof(intel_dp->edp_dpcd),
			      intel_dp->edp_dpcd);

	/*
	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
	 */
	FUNC13(intel_dp);

	/* Read the eDP 1.4+ supported link rates. */
	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
		__le16 sink_rates[DP_MAX_SUPPORTED_RATES];
		int i;

		FUNC6(&intel_dp->aux, DP_SUPPORTED_LINK_RATES,
				sink_rates, sizeof(sink_rates));

		for (i = 0; i < FUNC0(sink_rates); i++) {
			int val = FUNC14(sink_rates[i]);

			if (val == 0)
				break;

			/* Value read multiplied by 200kHz gives the per-lane
			 * link rate in kHz. The source rates are, however,
			 * stored in terms of LS_Clk kHz. The full conversion
			 * back to symbols is
			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
			 */
			intel_dp->sink_rates[i] = (val * 200) / 10;
		}
		intel_dp->num_sink_rates = i;
	}

	/*
	 * Use DP_LINK_RATE_SET if DP_SUPPORTED_LINK_RATES are available,
	 * default to DP_MAX_LINK_RATE and DP_LINK_BW_SET otherwise.
	 */
	if (intel_dp->num_sink_rates)
		intel_dp->use_rate_select = true;
	else
		FUNC12(intel_dp);

	FUNC11(intel_dp);

	/* Read the eDP DSC DPCD registers */
	if (FUNC2(dev_priv) >= 10 || FUNC3(dev_priv))
		FUNC9(intel_dp);

	return true;
}