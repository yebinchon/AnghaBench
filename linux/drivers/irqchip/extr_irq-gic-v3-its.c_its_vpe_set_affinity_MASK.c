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
struct its_vpe {int col_idx; } ;
struct irq_data {int dummy; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int IRQ_SET_MASK_OK_DONE ; 
 int FUNC0 (struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct its_vpe* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_vpe*) ; 
 int /*<<< orphan*/  FUNC5 (struct its_vpe*,int,int) ; 

__attribute__((used)) static int FUNC6(struct irq_data *d,
				const struct cpumask *mask_val,
				bool force)
{
	struct its_vpe *vpe = FUNC2(d);
	int cpu = FUNC0(mask_val);

	/*
	 * Changing affinity is mega expensive, so let's be as lazy as
	 * we can and only do it if we really have to. Also, if mapped
	 * into the proxy device, we need to move the doorbell
	 * interrupt to its new location.
	 */
	if (vpe->col_idx != cpu) {
		int from = vpe->col_idx;

		vpe->col_idx = cpu;
		FUNC4(vpe);
		FUNC5(vpe, from, cpu);
	}

	FUNC3(d, FUNC1(cpu));

	return IRQ_SET_MASK_OK_DONE;
}