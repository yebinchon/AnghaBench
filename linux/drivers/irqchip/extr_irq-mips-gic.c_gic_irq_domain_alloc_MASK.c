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
struct irq_fwspec {scalar_t__* param; } ;
struct irq_domain {int dummy; } ;
typedef  int /*<<< orphan*/  irq_hw_number_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ GIC_SHARED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *d, unsigned int virq,
				unsigned int nr_irqs, void *arg)
{
	struct irq_fwspec *fwspec = arg;
	irq_hw_number_t hwirq;

	if (fwspec->param[0] == GIC_SHARED)
		hwirq = FUNC1(fwspec->param[1]);
	else
		hwirq = FUNC0(fwspec->param[1]);

	return FUNC2(d, virq, hwirq);
}