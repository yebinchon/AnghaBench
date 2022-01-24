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
struct intel_dp {scalar_t__* dpcd; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 size_t DP_DPCD_REV ; 
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*) ; 

bool
FUNC3(struct intel_dp *intel_dp)
{
	if (FUNC1(&intel_dp->aux, 0x000, intel_dp->dpcd,
			     sizeof(intel_dp->dpcd)) < 0)
		return false; /* aux transfer failed */

	FUNC2(intel_dp);

	FUNC0("DPCD: %*ph\n", (int) sizeof(intel_dp->dpcd), intel_dp->dpcd);

	return intel_dp->dpcd[DP_DPCD_REV] != 0;
}