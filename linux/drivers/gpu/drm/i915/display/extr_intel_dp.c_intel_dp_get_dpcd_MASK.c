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
typedef  int /*<<< orphan*/  u8 ;
struct intel_dp {int* dpcd; int /*<<< orphan*/  downstream_ports; int /*<<< orphan*/  aux; int /*<<< orphan*/  sink_count; int /*<<< orphan*/  desc; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DOWNSTREAM_PORT_0 ; 
 int /*<<< orphan*/  DP_DPCD_QUIRK_NO_SINK_COUNT ; 
 size_t DP_DPCD_REV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_MAX_DOWNSTREAM_PORTS ; 
 int /*<<< orphan*/  DP_SINK_COUNT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 

__attribute__((used)) static bool
FUNC10(struct intel_dp *intel_dp)
{
	if (!FUNC7(intel_dp))
		return false;

	/*
	 * Don't clobber cached eDP rates. Also skip re-reading
	 * the OUI/ID since we know it won't change.
	 */
	if (!FUNC6(intel_dp)) {
		FUNC5(&intel_dp->aux, &intel_dp->desc,
				 FUNC4(intel_dp->dpcd));

		FUNC9(intel_dp);
		FUNC8(intel_dp);
	}

	/*
	 * Some eDP panels do not set a valid value for sink count, that is why
	 * it don't care about read it here and in intel_edp_init_dpcd().
	 */
	if (!FUNC6(intel_dp) &&
	    !FUNC3(&intel_dp->desc, DP_DPCD_QUIRK_NO_SINK_COUNT)) {
		u8 count;
		ssize_t r;

		r = FUNC2(&intel_dp->aux, DP_SINK_COUNT, &count);
		if (r < 1)
			return false;

		/*
		 * Sink count can change between short pulse hpd hence
		 * a member variable in intel_dp will track any changes
		 * between short pulse interrupts.
		 */
		intel_dp->sink_count = FUNC0(count);

		/*
		 * SINK_COUNT == 0 and DOWNSTREAM_PORT_PRESENT == 1 implies that
		 * a dongle is present but no display. Unless we require to know
		 * if a dongle is present or not, we don't need to update
		 * downstream port information. So, an early return here saves
		 * time from performing other operations which are not required.
		 */
		if (!intel_dp->sink_count)
			return false;
	}

	if (!FUNC4(intel_dp->dpcd))
		return true; /* native DP sink */

	if (intel_dp->dpcd[DP_DPCD_REV] == 0x10)
		return true; /* no per-port downstream info */

	if (FUNC1(&intel_dp->aux, DP_DOWNSTREAM_PORT_0,
			     intel_dp->downstream_ports,
			     DP_MAX_DOWNSTREAM_PORTS) < 0)
		return false; /* downstream port status fetch failed */

	return true;
}