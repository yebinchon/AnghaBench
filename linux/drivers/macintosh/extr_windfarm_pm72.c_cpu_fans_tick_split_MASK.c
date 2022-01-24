#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wf_cpu_pid_state {int target; } ;
typedef  int s32 ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CPU_INTAKE_SCALE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FAILURE_FAN ; 
 int /*<<< orphan*/  FAILURE_SENSOR ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_1__** cpu_front_fans ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct wf_cpu_pid_state* cpu_pid ; 
 TYPE_1__** cpu_rear_fans ; 
 int /*<<< orphan*/  failure_state ; 
 int FUNC3 (int,int) ; 
 int nr_chips ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int*) ; 
 int FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wf_cpu_pid_state*,int,int) ; 

__attribute__((used)) static void FUNC9(void)
{
	int err, cpu;
	s32 intake, temp, power, t_max = 0;

	FUNC0("* cpu fans_tick_split()\n");

	for (cpu = 0; cpu < nr_chips; ++cpu) {
		struct wf_cpu_pid_state *sp = &cpu_pid[cpu];

		/* Read current speed */
		FUNC6(cpu_rear_fans[cpu], &sp->target);

		FUNC0("  CPU%d: cur_target = %d RPM\n", cpu, sp->target);

		err = FUNC5(cpu, &temp, &power);
		if (err) {
			failure_state |= FAILURE_SENSOR;
			FUNC2();
			return;
		}

		/* Keep track of highest temp */
		t_max = FUNC3(t_max, temp);

		/* Handle possible overtemps */
		if (FUNC1(t_max))
			return;

		/* Run PID */
		FUNC8(sp, power, temp);

		FUNC0("  CPU%d: target = %d RPM\n", cpu, sp->target);

		/* Apply result directly to exhaust fan */
		err = FUNC7(cpu_rear_fans[cpu], sp->target);
		if (err) {
			FUNC4("wf_pm72: Fan %s reports error %d\n",
			       cpu_rear_fans[cpu]->name, err);
			failure_state |= FAILURE_FAN;
			break;
		}

		/* Scale result for intake fan */
		intake = (sp->target * CPU_INTAKE_SCALE) >> 16;
		FUNC0("  CPU%d: intake = %d RPM\n", cpu, intake);
		err = FUNC7(cpu_front_fans[cpu], intake);
		if (err) {
			FUNC4("wf_pm72: Fan %s reports error %d\n",
			       cpu_front_fans[cpu]->name, err);
			failure_state |= FAILURE_FAN;
			break;
		}
	}
}