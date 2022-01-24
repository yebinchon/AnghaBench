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
struct intel_digital_port {int /*<<< orphan*/  tc_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_digital_port*) ; 
 int FUNC3 (struct intel_digital_port*) ; 

bool FUNC4(struct intel_digital_port *dig_port)
{
	bool is_connected;

	FUNC1(dig_port);
	is_connected = FUNC3(dig_port) &
		       FUNC0(dig_port->tc_mode);
	FUNC2(dig_port);

	return is_connected;
}