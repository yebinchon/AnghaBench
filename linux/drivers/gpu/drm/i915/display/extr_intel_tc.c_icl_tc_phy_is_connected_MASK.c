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
struct intel_digital_port {scalar_t__ tc_mode; int /*<<< orphan*/  tc_port_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TC_PORT_DP_ALT ; 
 scalar_t__ TC_PORT_LEGACY ; 
 scalar_t__ TC_PORT_TBT_ALT ; 
 scalar_t__ FUNC1 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*) ; 

__attribute__((used)) static bool FUNC3(struct intel_digital_port *dig_port)
{
	if (!FUNC2(dig_port)) {
		FUNC0("Port %s: PHY status not complete\n",
			      dig_port->tc_port_name);
		return dig_port->tc_mode == TC_PORT_TBT_ALT;
	}

	if (FUNC1(dig_port)) {
		FUNC0("Port %s: PHY still in safe mode\n",
			      dig_port->tc_port_name);

		return false;
	}

	return dig_port->tc_mode == TC_PORT_DP_ALT ||
	       dig_port->tc_mode == TC_PORT_LEGACY;
}