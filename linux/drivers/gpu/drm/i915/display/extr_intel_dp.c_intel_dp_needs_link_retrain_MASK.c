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
struct intel_dp {int /*<<< orphan*/  lane_count; int /*<<< orphan*/  link_rate; int /*<<< orphan*/  link_trained; } ;

/* Variables and functions */
 int DP_LINK_STATUS_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct intel_dp*) ; 

__attribute__((used)) static bool
FUNC4(struct intel_dp *intel_dp)
{
	u8 link_status[DP_LINK_STATUS_SIZE];

	if (!intel_dp->link_trained)
		return false;

	/*
	 * While PSR source HW is enabled, it will control main-link sending
	 * frames, enabling and disabling it so trying to do a retrain will fail
	 * as the link would or not be on or it could mix training patterns
	 * and frame data at the same time causing retrain to fail.
	 * Also when exiting PSR, HW will retrain the link anyways fixing
	 * any link status error.
	 */
	if (FUNC3(intel_dp))
		return false;

	if (!FUNC1(intel_dp, link_status))
		return false;

	/*
	 * Validate the cached values of intel_dp->link_rate and
	 * intel_dp->lane_count before attempting to retrain.
	 */
	if (!FUNC2(intel_dp, intel_dp->link_rate,
					intel_dp->lane_count))
		return false;

	/* Retrain if Channel EQ or CR not ok */
	return !FUNC0(link_status, intel_dp->lane_count);
}