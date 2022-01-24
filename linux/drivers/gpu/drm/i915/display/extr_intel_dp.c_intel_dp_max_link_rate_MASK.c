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
struct intel_dp {int* common_rates; int /*<<< orphan*/  max_link_rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct intel_dp*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct intel_dp *intel_dp)
{
	int len;

	len = FUNC1(intel_dp, intel_dp->max_link_rate);
	if (FUNC0(len <= 0))
		return 162000;

	return intel_dp->common_rates[len - 1];
}