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
typedef  int u8 ;
struct intel_dp {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int DP_MAX_RESYNC_FRAME_COUNT_MASK ; 
 int /*<<< orphan*/  DP_SYNCHRONIZATION_LATENCY_IN_SINK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u8 FUNC2(struct intel_dp *intel_dp)
{
	u8 val = 8; /* assume the worst if we can't read the value */

	if (FUNC1(&intel_dp->aux,
			      DP_SYNCHRONIZATION_LATENCY_IN_SINK, &val) == 1)
		val &= DP_MAX_RESYNC_FRAME_COUNT_MASK;
	else
		FUNC0("Unable to get sink synchronization latency, assuming 8 frames\n");
	return val;
}