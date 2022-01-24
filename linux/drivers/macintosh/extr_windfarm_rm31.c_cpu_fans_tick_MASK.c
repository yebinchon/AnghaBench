#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wf_cpu_pid_state {int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FAILURE_FAN ; 
 int /*<<< orphan*/  FAILURE_SENSOR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__*** cpu_fans ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct wf_cpu_pid_state* cpu_pid ; 
 int /*<<< orphan*/  dimms_output_clamp ; 
 int /*<<< orphan*/  failure_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nr_chips ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wf_cpu_pid_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(void)
{
	int err, cpu, i;
	s32 speed, temp, power, t_max = 0;

	FUNC0("* cpu fans_tick_split()\n");

	for (cpu = 0; cpu < nr_chips; ++cpu) {
		struct wf_cpu_pid_state *sp = &cpu_pid[cpu];

		/* Read current speed */
		FUNC6(cpu_fans[cpu][0], &sp->target);

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

		/* Apply DIMMs clamp */
		speed = FUNC3(sp->target, dimms_output_clamp);

		/* Apply result to all cpu fans */
		for (i = 0; i < 3; i++) {
			err = FUNC7(cpu_fans[cpu][i], speed);
			if (err) {
				FUNC4("wf_rm31: Fan %s reports error %d\n",
					   cpu_fans[cpu][i]->name, err);
				failure_state |= FAILURE_FAN;
			}
		}
	}
}