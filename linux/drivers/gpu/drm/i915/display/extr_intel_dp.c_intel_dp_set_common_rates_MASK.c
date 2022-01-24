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
struct intel_dp {int num_common_rates; int* common_rates; int /*<<< orphan*/  num_sink_rates; int /*<<< orphan*/  sink_rates; int /*<<< orphan*/  num_source_rates; int /*<<< orphan*/  source_rates; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC2(struct intel_dp *intel_dp)
{
	FUNC0(!intel_dp->num_source_rates || !intel_dp->num_sink_rates);

	intel_dp->num_common_rates = FUNC1(intel_dp->source_rates,
						     intel_dp->num_source_rates,
						     intel_dp->sink_rates,
						     intel_dp->num_sink_rates,
						     intel_dp->common_rates);

	/* Paranoia, there should always be something in common. */
	if (FUNC0(intel_dp->num_common_rates == 0)) {
		intel_dp->common_rates[0] = 162000;
		intel_dp->num_common_rates = 1;
	}
}