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
struct cpu_mask_set {int /*<<< orphan*/  used; int /*<<< orphan*/  mask; } ;
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cpu_mask_set*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int nr_cpu_ids ; 

__attribute__((used)) static int FUNC4(struct cpu_mask_set *set, cpumask_var_t diff)
{
	int cpu;

	if (!diff || !set)
		return -EINVAL;

	FUNC0(set);

	/* Find out CPUs left in CPU mask */
	FUNC1(diff, &set->mask, &set->used);

	cpu = FUNC2(diff);
	if (cpu >= nr_cpu_ids) /* empty */
		cpu = -EINVAL;
	else
		FUNC3(cpu, &set->used);

	return cpu;
}