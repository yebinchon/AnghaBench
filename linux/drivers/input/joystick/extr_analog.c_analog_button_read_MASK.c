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
struct analog_port {unsigned char buttons; unsigned char mask; int /*<<< orphan*/  gameport; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANALOG_SAITEK_DELAY ; 
 int /*<<< orphan*/  ANALOG_SAITEK_TIME ; 
 int* analog_chf ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct analog_port *port, char saitek, char chf)
{
	unsigned char u;
	int t = 1, i = 0;
	int strobe = FUNC1(port->gameport, ANALOG_SAITEK_TIME);

	u = FUNC0(port->gameport);

	if (!chf) {
		port->buttons = (~u >> 4) & 0xf;
		return 0;
	}

	port->buttons = 0;

	while ((~u & 0xf0) && (i < 16) && t) {
		port->buttons |= 1 << analog_chf[(~u >> 4) & 0xf];
		if (!saitek) return 0;
		FUNC3(ANALOG_SAITEK_DELAY);
		t = strobe;
		FUNC2(port->gameport);
		while (((u = FUNC0(port->gameport)) & port->mask) && t) t--;
		i++;
	}

	return -(!t || (i == 16));
}