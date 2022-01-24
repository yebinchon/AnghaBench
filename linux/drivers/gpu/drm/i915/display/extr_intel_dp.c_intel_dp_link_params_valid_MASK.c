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
typedef  scalar_t__ u8 ;
struct intel_dp {int max_link_rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct intel_dp*) ; 

__attribute__((used)) static bool FUNC1(struct intel_dp *intel_dp, int link_rate,
				       u8 lane_count)
{
	/*
	 * FIXME: we need to synchronize the current link parameters with
	 * hardware readout. Currently fast link training doesn't work on
	 * boot-up.
	 */
	if (link_rate == 0 ||
	    link_rate > intel_dp->max_link_rate)
		return false;

	if (lane_count == 0 ||
	    lane_count > FUNC0(intel_dp))
		return false;

	return true;
}