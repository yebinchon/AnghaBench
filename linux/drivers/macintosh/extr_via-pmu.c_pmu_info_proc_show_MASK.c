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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int PMU_DRIVER_VERSION ; 
 int PMU_PWR_AC_PRESENT ; 
 int pmu_battery_count ; 
 int pmu_power_flags ; 
 int pmu_version ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC1(struct seq_file *m, void *v)
{
	FUNC0(m, "PMU driver version     : %d\n", PMU_DRIVER_VERSION);
	FUNC0(m, "PMU firmware version   : %02x\n", pmu_version);
	FUNC0(m, "AC Power               : %d\n",
		((pmu_power_flags & PMU_PWR_AC_PRESENT) != 0) || pmu_battery_count == 0);
	FUNC0(m, "Battery count          : %d\n", pmu_battery_count);

	return 0;
}