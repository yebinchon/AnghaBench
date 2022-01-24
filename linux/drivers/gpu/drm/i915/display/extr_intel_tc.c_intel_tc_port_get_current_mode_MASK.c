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
typedef  scalar_t__ u32 ;
struct intel_digital_port {scalar_t__ tc_legacy_port; } ;
typedef  enum tc_port_mode { ____Placeholder_tc_port_mode } tc_port_mode ;

/* Variables and functions */
 int TC_PORT_DP_ALT ; 
 int TC_PORT_LEGACY ; 
 int TC_PORT_TBT_ALT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_digital_port*) ; 
 scalar_t__ FUNC4 (struct intel_digital_port*) ; 

__attribute__((used)) static enum tc_port_mode
FUNC5(struct intel_digital_port *dig_port)
{
	u32 live_status_mask = FUNC4(dig_port);
	bool in_safe_mode = FUNC2(dig_port);
	enum tc_port_mode mode;

	if (in_safe_mode || FUNC0(!FUNC3(dig_port)))
		return TC_PORT_TBT_ALT;

	mode = dig_port->tc_legacy_port ? TC_PORT_LEGACY : TC_PORT_DP_ALT;
	if (live_status_mask) {
		enum tc_port_mode live_mode = FUNC1(live_status_mask) - 1;

		if (!FUNC0(live_mode == TC_PORT_TBT_ALT))
			mode = live_mode;
	}

	return mode;
}