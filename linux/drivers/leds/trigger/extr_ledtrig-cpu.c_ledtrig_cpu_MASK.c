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
struct led_trigger_cpu {int is_active; int /*<<< orphan*/  _trig; } ;
typedef  enum cpu_led_event { ____Placeholder_cpu_led_event } cpu_led_event ;

/* Variables and functions */
#define  CPU_LED_HALTED 132 
#define  CPU_LED_IDLE_END 131 
#define  CPU_LED_IDLE_START 130 
#define  CPU_LED_START 129 
#define  CPU_LED_STOP 128 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int LED_FULL ; 
 unsigned int LED_OFF ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_trig ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  num_active_cpus ; 
 unsigned int FUNC4 () ; 
 struct led_trigger_cpu* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trig_cpu_all ; 

void FUNC6(enum cpu_led_event ledevt)
{
	struct led_trigger_cpu *trig = FUNC5(&cpu_trig);
	bool is_active = trig->is_active;

	/* Locate the correct CPU LED */
	switch (ledevt) {
	case CPU_LED_IDLE_END:
	case CPU_LED_START:
		/* Will turn the LED on, max brightness */
		is_active = true;
		break;

	case CPU_LED_IDLE_START:
	case CPU_LED_STOP:
	case CPU_LED_HALTED:
		/* Will turn the LED off */
		is_active = false;
		break;

	default:
		/* Will leave the LED as it is */
		break;
	}

	if (is_active != trig->is_active) {
		unsigned int active_cpus;
		unsigned int total_cpus;

		/* Update trigger state */
		trig->is_active = is_active;
		FUNC1(is_active ? 1 : -1, &num_active_cpus);
		active_cpus = FUNC2(&num_active_cpus);
		total_cpus = FUNC4();

		FUNC3(trig->_trig,
			is_active ? LED_FULL : LED_OFF);


		FUNC3(trig_cpu_all,
			FUNC0(LED_FULL * active_cpus, total_cpus));

	}
}