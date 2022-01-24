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
 int TC_PORT_LEGACY ; 
 int TC_PORT_TBT_ALT ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct intel_digital_port*) ; 
 scalar_t__ FUNC2 (struct intel_digital_port*) ; 

__attribute__((used)) static enum tc_port_mode
FUNC3(struct intel_digital_port *dig_port)
{
	u32 live_status_mask = FUNC2(dig_port);

	if (live_status_mask)
		return FUNC0(live_status_mask) - 1;

	return FUNC1(dig_port) &&
	       dig_port->tc_legacy_port ? TC_PORT_LEGACY :
					  TC_PORT_TBT_ALT;
}