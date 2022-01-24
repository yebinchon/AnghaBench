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
struct intel_digital_port {int /*<<< orphan*/  tc_link_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_digital_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_digital_port*) ; 

void FUNC2(struct intel_digital_port *dig_port,
			    int required_lanes)
{
	FUNC0(dig_port, required_lanes);
	dig_port->tc_link_refcount++;
	FUNC1(dig_port);
}