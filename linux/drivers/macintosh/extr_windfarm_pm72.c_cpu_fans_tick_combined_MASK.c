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
struct wf_cpu_pid_state {int target; } ;
struct wf_control {int /*<<< orphan*/  name; } ;
typedef  int s32 ;
struct TYPE_2__ {int rmaxn_exhaust_fan; } ;

/* Variables and functions */
 int CPU_INTAKE_SCALE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FAILURE_FAN ; 
 int /*<<< orphan*/  FAILURE_SENSOR ; 
 scalar_t__ FUNC1 (int) ; 
 struct wf_control** cpu_front_fans ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__** cpu_mpu_data ; 
 struct wf_cpu_pid_state* cpu_pid ; 
 struct wf_control** cpu_pumps ; 
 struct wf_control** cpu_rear_fans ; 
 int /*<<< orphan*/  failure_state ; 
 int FUNC3 (int,int) ; 
 int nr_chips ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct wf_control*,int*) ; 
 int FUNC7 (struct wf_control*) ; 
 int FUNC8 (struct wf_control*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wf_cpu_pid_state*,int,int) ; 

__attribute__((used)) static void FUNC10(void)
{
	s32 temp0, power0, temp1, power1, t_max = 0;
	s32 temp, power, intake, pump;
	struct wf_control *pump0, *pump1;
	struct wf_cpu_pid_state *sp = &cpu_pid[0];
	int err, cpu;

	FUNC0("* cpu fans_tick_combined()\n");

	/* Read current speed from cpu 0 */
	FUNC6(cpu_rear_fans[0], &sp->target);

	FUNC0("  CPUs: cur_target = %d RPM\n", sp->target);

	/* Read values for both CPUs */
	err = FUNC5(0, &temp0, &power0);
	if (err) {
		failure_state |= FAILURE_SENSOR;
		FUNC2();
		return;
	}
	err = FUNC5(1, &temp1, &power1);
	if (err) {
		failure_state |= FAILURE_SENSOR;
		FUNC2();
		return;
	}

	/* Keep track of highest temp */
	t_max = FUNC3(t_max, FUNC3(temp0, temp1));

	/* Handle possible overtemps */
	if (FUNC1(t_max))
		return;

	/* Use the max temp & power of both */
	temp = FUNC3(temp0, temp1);
	power = FUNC3(power0, power1);

	/* Run PID */
	FUNC9(sp, power, temp);

	/* Scale result for intake fan */
	intake = (sp->target * CPU_INTAKE_SCALE) >> 16;

	/* Same deal with pump speed */
	pump0 = cpu_pumps[0];
	pump1 = cpu_pumps[1];
	if (!pump0) {
		pump0 = pump1;
		pump1 = NULL;
	}
	pump = (sp->target * FUNC7(pump0)) /
		cpu_mpu_data[0]->rmaxn_exhaust_fan;

	FUNC0("  CPUs: target = %d RPM\n", sp->target);
	FUNC0("  CPUs: intake = %d RPM\n", intake);
	FUNC0("  CPUs: pump   = %d RPM\n", pump);

	for (cpu = 0; cpu < nr_chips; cpu++) {
		err = FUNC8(cpu_rear_fans[cpu], sp->target);
		if (err) {
			FUNC4("wf_pm72: Fan %s reports error %d\n",
				   cpu_rear_fans[cpu]->name, err);
			failure_state |= FAILURE_FAN;
		}
		err = FUNC8(cpu_front_fans[cpu], intake);
		if (err) {
			FUNC4("wf_pm72: Fan %s reports error %d\n",
				   cpu_front_fans[cpu]->name, err);
			failure_state |= FAILURE_FAN;
		}
		err = 0;
		if (cpu_pumps[cpu])
			err = FUNC8(cpu_pumps[cpu], pump);
		if (err) {
			FUNC4("wf_pm72: Pump %s reports error %d\n",
				   cpu_pumps[cpu]->name, err);
			failure_state |= FAILURE_FAN;
		}
	}
}