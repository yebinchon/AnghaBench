#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gameport {int dummy; } ;
struct analog_port {int buttons; int /*<<< orphan*/  initial; int /*<<< orphan*/  axes; TYPE_1__* analog; scalar_t__ axtime; int /*<<< orphan*/  reads; int /*<<< orphan*/  bads; int /*<<< orphan*/  gameport; scalar_t__ cooked; } ;
struct TYPE_2__ {int mask; } ;

/* Variables and functions */
 int ANALOG_ANY_CHF ; 
 scalar_t__ ANALOG_AXIS_TIME ; 
 int ANALOG_SAITEK ; 
 scalar_t__ FUNC0 (struct analog_port*,char,char) ; 
 int* analog_chf ; 
 scalar_t__ FUNC1 (struct analog_port*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct analog_port* FUNC4 (struct gameport*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	struct analog_port *port = FUNC4(gameport);
	int i;

	char saitek = !!(port->analog[0].mask & ANALOG_SAITEK);
	char chf = !!(port->analog[0].mask & ANALOG_ANY_CHF);

	if (port->cooked) {
		port->bads -= FUNC3(port->gameport, port->axes, &port->buttons);
		if (chf)
			port->buttons = port->buttons ? (1 << analog_chf[port->buttons]) : 0;
		port->reads++;
	} else {
		if (!port->axtime--) {
			port->bads -= FUNC1(port);
			port->bads -= FUNC0(port, saitek, chf);
			port->reads++;
			port->axtime = ANALOG_AXIS_TIME - 1;
		} else {
			if (!saitek)
				FUNC0(port, saitek, chf);
		}
	}

	for (i = 0; i < 2; i++)
		if (port->analog[i].mask)
			FUNC2(port->analog + i, port->axes, port->initial, port->buttons);
}