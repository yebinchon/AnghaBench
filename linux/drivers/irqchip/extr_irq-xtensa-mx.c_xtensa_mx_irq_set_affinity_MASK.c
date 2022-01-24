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
struct irq_data {scalar_t__ hwirq; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 scalar_t__ HW_IRQ_MX_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC1 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_data *d,
		const struct cpumask *dest, bool force)
{
	int cpu = FUNC1(dest, cpu_online_mask);
	unsigned mask = 1u << cpu;

	FUNC4(mask, FUNC0(d->hwirq - HW_IRQ_MX_BASE));
	FUNC3(d, FUNC2(cpu));

	return 0;

}