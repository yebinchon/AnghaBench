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
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ cpufreq_clamp ; 
 scalar_t__ fan_cpu_main ; 
 scalar_t__ fan_cpu_second ; 
 scalar_t__ fan_cpu_third ; 
 scalar_t__ fan_hd ; 
 scalar_t__ fan_slots ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ sensor_cpu_power ; 
 scalar_t__ sensor_cpu_temp ; 
 scalar_t__ sensor_hd_temp ; 
 scalar_t__ sensor_slots_power ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  wf_smu_cpu_fans ; 
 int /*<<< orphan*/  wf_smu_drive_fans ; 
 int /*<<< orphan*/  wf_smu_events ; 
 int /*<<< orphan*/  wf_smu_slots_fans ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *ddev)
{
	FUNC4(&wf_smu_events);

	/* XXX We don't have yet a guarantee that our callback isn't
	 * in progress when returning from wf_unregister_client, so
	 * we add an arbitrary delay. I'll have to fix that in the core
	 */
	FUNC1(1000);

	/* Release all sensors */
	/* One more crappy race: I don't think we have any guarantee here
	 * that the attribute callback won't race with the sensor beeing
	 * disposed of, and I'm not 100% certain what best way to deal
	 * with that except by adding locks all over... I'll do that
	 * eventually but heh, who ever rmmod this module anyway ?
	 */
	if (sensor_cpu_power)
		FUNC3(sensor_cpu_power);
	if (sensor_cpu_temp)
		FUNC3(sensor_cpu_temp);
	if (sensor_hd_temp)
		FUNC3(sensor_hd_temp);
	if (sensor_slots_power)
		FUNC3(sensor_slots_power);

	/* Release all controls */
	if (fan_cpu_main)
		FUNC2(fan_cpu_main);
	if (fan_cpu_second)
		FUNC2(fan_cpu_second);
	if (fan_cpu_third)
		FUNC2(fan_cpu_third);
	if (fan_hd)
		FUNC2(fan_hd);
	if (fan_slots)
		FUNC2(fan_slots);
	if (cpufreq_clamp)
		FUNC2(cpufreq_clamp);

	/* Destroy control loops state structures */
	FUNC0(wf_smu_slots_fans);
	FUNC0(wf_smu_drive_fans);
	FUNC0(wf_smu_cpu_fans);

	return 0;
}