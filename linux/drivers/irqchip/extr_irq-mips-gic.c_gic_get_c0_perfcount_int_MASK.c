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

/* Variables and functions */
 int /*<<< orphan*/  GIC_LOCAL_INT_PERFCTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MIPS_CPU_IRQ_BASE ; 
 scalar_t__ cp0_perfcount_irq ; 
 int /*<<< orphan*/  gic_irq_domain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	if (!FUNC1(GIC_LOCAL_INT_PERFCTR)) {
		/* Is the performance counter shared with the timer? */
		if (cp0_perfcount_irq < 0)
			return -1;
		return MIPS_CPU_IRQ_BASE + cp0_perfcount_irq;
	}
	return FUNC2(gic_irq_domain,
				  FUNC0(GIC_LOCAL_INT_PERFCTR));
}