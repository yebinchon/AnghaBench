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
struct fam15h_power_data {int* cu_on; int /*<<< orphan*/ * cpu_sw_pwr_ptsc; int /*<<< orphan*/ * cu_acc_power; } ;
struct TYPE_2__ {int cpu_core_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_F15H_CU_PWR_ACCUMULATOR ; 
 int /*<<< orphan*/  MSR_F15H_PTSC ; 
 TYPE_1__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(void *_data)
{
	struct fam15h_power_data *data = _data;
	int cpu, cu;

	cpu = FUNC2();

	/*
	 * With the new x86 topology modelling, cpu core id actually
	 * is compute unit id.
	 */
	cu = FUNC0(cpu).cpu_core_id;

	FUNC1(MSR_F15H_CU_PWR_ACCUMULATOR, &data->cu_acc_power[cu]);
	FUNC1(MSR_F15H_PTSC, &data->cpu_sw_pwr_ptsc[cu]);

	data->cu_on[cu] = 1;
}