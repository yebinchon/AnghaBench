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
struct edp_power_seq {scalar_t__ t1_t3; scalar_t__ t8; scalar_t__ t9; scalar_t__ t10; scalar_t__ t11_t12; } ;
struct intel_dp {struct edp_power_seq pps_delays; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct edp_power_seq*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,struct edp_power_seq*) ; 

__attribute__((used)) static void
FUNC3(struct intel_dp *intel_dp)
{
	struct edp_power_seq hw;
	struct edp_power_seq *sw = &intel_dp->pps_delays;

	FUNC2(intel_dp, &hw);

	if (hw.t1_t3 != sw->t1_t3 || hw.t8 != sw->t8 || hw.t9 != sw->t9 ||
	    hw.t10 != sw->t10 || hw.t11_t12 != sw->t11_t12) {
		FUNC0("PPS state mismatch\n");
		FUNC1("sw", sw);
		FUNC1("hw", &hw);
	}
}