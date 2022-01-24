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
struct intel_dp {scalar_t__ use_rate_select; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct intel_dp*,int) ; 

void FUNC2(struct intel_dp *intel_dp, int port_clock,
			   u8 *link_bw, u8 *rate_select)
{
	/* eDP 1.4 rate select method. */
	if (intel_dp->use_rate_select) {
		*link_bw = 0;
		*rate_select =
			FUNC1(intel_dp, port_clock);
	} else {
		*link_bw = FUNC0(port_clock);
		*rate_select = 0;
	}
}