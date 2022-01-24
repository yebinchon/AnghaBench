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
struct thermostat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thermostat*) ; 
 int fan_speed ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct thermostat*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct thermostat*) ; 

__attribute__((used)) static int FUNC7(void *arg)
{
	struct thermostat* th = arg;

	FUNC4();
	while(!FUNC1()) {
		FUNC5();
		FUNC2(2000);

#ifndef DEBUG
		if (fan_speed != -1)
			FUNC3(th);
#else
		read_sensors(th);
#endif		

		if (fan_speed != -1)
			FUNC6(th);

#ifdef DEBUG
		display_stats(th);
#endif

	}

	return 0;
}