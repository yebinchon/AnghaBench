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
struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int /*<<< orphan*/  time_remaining; int /*<<< orphan*/  voltage; int /*<<< orphan*/  amperage; int /*<<< orphan*/  max_charge; int /*<<< orphan*/  charge; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 TYPE_1__* pmu_batteries ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	long batnum = (long)m->private;
	
	FUNC1(m, '\n');
	FUNC0(m, "flags      : %08x\n", pmu_batteries[batnum].flags);
	FUNC0(m, "charge     : %d\n", pmu_batteries[batnum].charge);
	FUNC0(m, "max_charge : %d\n", pmu_batteries[batnum].max_charge);
	FUNC0(m, "current    : %d\n", pmu_batteries[batnum].amperage);
	FUNC0(m, "voltage    : %d\n", pmu_batteries[batnum].voltage);
	FUNC0(m, "time rem.  : %d\n", pmu_batteries[batnum].time_remaining);
	return 0;
}