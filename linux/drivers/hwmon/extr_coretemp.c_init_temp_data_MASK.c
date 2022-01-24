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
struct temp_data {int is_pkg_data; unsigned int cpu; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  attr_size; int /*<<< orphan*/  cpu_core_id; int /*<<< orphan*/  status_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_CORE_ATTRS ; 
 int /*<<< orphan*/  MSR_IA32_PACKAGE_THERM_STATUS ; 
 int /*<<< orphan*/  MSR_IA32_THERM_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct temp_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct temp_data *FUNC3(unsigned int cpu, int pkg_flag)
{
	struct temp_data *tdata;

	tdata = FUNC1(sizeof(struct temp_data), GFP_KERNEL);
	if (!tdata)
		return NULL;

	tdata->status_reg = pkg_flag ? MSR_IA32_PACKAGE_THERM_STATUS :
							MSR_IA32_THERM_STATUS;
	tdata->is_pkg_data = pkg_flag;
	tdata->cpu = cpu;
	tdata->cpu_core_id = FUNC0(cpu);
	tdata->attr_size = MAX_CORE_ATTRS;
	FUNC2(&tdata->update_lock);
	return tdata;
}