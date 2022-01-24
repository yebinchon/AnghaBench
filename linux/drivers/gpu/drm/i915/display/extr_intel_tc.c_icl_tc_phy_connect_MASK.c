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
struct intel_digital_port {int tc_legacy_port; int /*<<< orphan*/  tc_mode; int /*<<< orphan*/  tc_port_name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TC_PORT_DP_ALT ; 
 int /*<<< orphan*/  TC_PORT_LEGACY ; 
 int /*<<< orphan*/  TC_PORT_TBT_ALT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_digital_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_digital_port*) ; 
 int FUNC5 (struct intel_digital_port*) ; 
 int FUNC6 (struct intel_digital_port*) ; 

__attribute__((used)) static void FUNC7(struct intel_digital_port *dig_port,
			       int required_lanes)
{
	int max_lanes;

	if (!FUNC4(dig_port)) {
		FUNC1("Port %s: PHY not ready\n",
			      dig_port->tc_port_name);
		goto out_set_tbt_alt_mode;
	}

	if (!FUNC3(dig_port, false) &&
	    !FUNC2(dig_port->tc_legacy_port))
		goto out_set_tbt_alt_mode;

	max_lanes = FUNC5(dig_port);
	if (dig_port->tc_legacy_port) {
		FUNC2(max_lanes != 4);
		dig_port->tc_mode = TC_PORT_LEGACY;

		return;
	}

	/*
	 * Now we have to re-check the live state, in case the port recently
	 * became disconnected. Not necessary for legacy mode.
	 */
	if (!(FUNC6(dig_port) & FUNC0(TC_PORT_DP_ALT))) {
		FUNC1("Port %s: PHY sudden disconnect\n",
			      dig_port->tc_port_name);
		goto out_set_safe_mode;
	}

	if (max_lanes < required_lanes) {
		FUNC1("Port %s: PHY max lanes %d < required lanes %d\n",
			      dig_port->tc_port_name,
			      max_lanes, required_lanes);
		goto out_set_safe_mode;
	}

	dig_port->tc_mode = TC_PORT_DP_ALT;

	return;

out_set_safe_mode:
	FUNC3(dig_port, true);
out_set_tbt_alt_mode:
	dig_port->tc_mode = TC_PORT_TBT_ALT;
}