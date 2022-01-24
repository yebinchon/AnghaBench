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
typedef  int /*<<< orphan*/  u64 ;
struct gameport {int dummy; } ;
struct analog_port {int loop; unsigned int speed; unsigned char mask; unsigned int* axes; struct gameport* gameport; } ;

/* Variables and functions */
 unsigned int ANALOG_FUZZ_BITS ; 
 int ANALOG_LOOP_TIME ; 
 unsigned int ANALOG_MAX_TIME ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(struct analog_port *port)
{
	struct gameport *gameport = port->gameport;
	u64 time[4], start, loop, now;
	unsigned int loopout, timeout;
	unsigned char data[4], this, last;
	unsigned long flags;
	int i, j;

	loopout = (ANALOG_LOOP_TIME * port->loop) / 1000;
	timeout = ANALOG_MAX_TIME * port->speed;

	FUNC6(flags);
	FUNC2(gameport);
	now = FUNC3();
	FUNC5(flags);

	start = now;
	this = port->mask;
	i = 0;

	do {
		loop = now;
		last = this;

		FUNC4();
		this = FUNC1(gameport) & port->mask;
		now = FUNC3();
		FUNC5(flags);

		if ((last ^ this) && (FUNC0(loop, now) < loopout)) {
			data[i] = last ^ this;
			time[i] = now;
			i++;
		}

	} while (this && (i < 4) && (FUNC0(start, now) < timeout));

	this <<= 4;

	for (--i; i >= 0; i--) {
		this |= data[i];
		for (j = 0; j < 4; j++)
			if (data[i] & (1 << j))
				port->axes[j] = (FUNC0(start, time[i]) << ANALOG_FUZZ_BITS) / port->loop;
	}

	return -(this != port->mask);
}