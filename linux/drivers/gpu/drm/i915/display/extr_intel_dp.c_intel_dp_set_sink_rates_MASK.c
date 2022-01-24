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
struct intel_dp {int* sink_rates; int num_sink_rates; int /*<<< orphan*/ * dpcd; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 size_t DP_MAX_LINK_RATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_dp *intel_dp)
{
	static const int dp_rates[] = {
		162000, 270000, 540000, 810000
	};
	int i, max_rate;

	max_rate = FUNC1(intel_dp->dpcd[DP_MAX_LINK_RATE]);

	for (i = 0; i < FUNC0(dp_rates); i++) {
		if (dp_rates[i] > max_rate)
			break;
		intel_dp->sink_rates[i] = dp_rates[i];
	}

	intel_dp->num_sink_rates = i;
}