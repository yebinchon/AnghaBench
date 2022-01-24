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
struct intel_dp {int /*<<< orphan*/  num_sink_rates; int /*<<< orphan*/  sink_rates; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct intel_dp *intel_dp, int rate)
{
	int i = FUNC1(intel_dp->sink_rates,
				    intel_dp->num_sink_rates, rate);

	if (FUNC0(i < 0))
		i = 0;

	return i;
}