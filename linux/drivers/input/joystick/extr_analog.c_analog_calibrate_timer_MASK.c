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
struct analog_port {int speed; unsigned int loop; struct gameport* gameport; } ;

/* Variables and functions */
 int analog_faketime ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ use_ktime ; 

__attribute__((used)) static void FUNC7(struct analog_port *port)
{
	struct gameport *gameport = port->gameport;
	unsigned int i, t, tx;
	u64 t1, t2, t3;
	unsigned long flags;

	if (use_ktime) {
		port->speed = 1000000;
	} else {
		FUNC4(flags);
		t1 = FUNC2();
#ifdef FAKE_TIME
		analog_faketime += 830;
#endif
		FUNC5(1);
		t2 = FUNC2();
		t3 = FUNC2();
		FUNC3(flags);

		port->speed = FUNC0(t1, t2) - FUNC0(t2, t3);
	}

	tx = ~0;

	for (i = 0; i < 50; i++) {
		FUNC4(flags);
		t1 = FUNC2();
		for (t = 0; t < 50; t++) {
			FUNC1(gameport);
			t2 = FUNC2();
		}
		t3 = FUNC2();
		FUNC3(flags);
		FUNC6(i);
		t = FUNC0(t1, t2) - FUNC0(t2, t3);
		if (t < tx) tx = t;
	}

        port->loop = tx / 50;
}