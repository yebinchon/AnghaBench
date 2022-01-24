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
struct intel_dp {int* dpcd; int /*<<< orphan*/  attached_connector; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int DP_AUTOMATED_TEST_REQUEST ; 
 int DP_CP_IRQ ; 
 int /*<<< orphan*/  DP_DEVICE_SERVICE_IRQ_VECTOR ; 
 size_t DP_DPCD_REV ; 
 int DP_SINK_SPECIFIC_IRQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_dp *intel_dp)
{
	u8 val;

	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
		return;

	if (FUNC1(&intel_dp->aux,
			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
		return;

	FUNC2(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);

	if (val & DP_AUTOMATED_TEST_REQUEST)
		FUNC3(intel_dp);

	if (val & DP_CP_IRQ)
		FUNC4(intel_dp->attached_connector);

	if (val & DP_SINK_SPECIFIC_IRQ)
		FUNC0("Sink specific irq unhandled\n");
}