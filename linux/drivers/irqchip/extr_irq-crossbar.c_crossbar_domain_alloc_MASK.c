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
struct irq_fwspec {int param_count; scalar_t__* param; } ;
struct irq_domain {int dummy; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {scalar_t__ max_crossbar_sources; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct irq_domain*,unsigned int,scalar_t__) ; 
 TYPE_1__* cb ; 
 int /*<<< orphan*/  crossbar_chip ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct irq_domain *d, unsigned int virq,
				 unsigned int nr_irqs, void *data)
{
	struct irq_fwspec *fwspec = data;
	irq_hw_number_t hwirq;
	int i;

	if (fwspec->param_count != 3)
		return -EINVAL;	/* Not GIC compliant */
	if (fwspec->param[0] != 0)
		return -EINVAL;	/* No PPI should point to this domain */

	hwirq = fwspec->param[1];
	if ((hwirq + nr_irqs) > cb->max_crossbar_sources)
		return -EINVAL;	/* Can't deal with this */

	for (i = 0; i < nr_irqs; i++) {
		int err = FUNC0(d, virq + i, hwirq + i);

		if (err)
			return err;

		FUNC1(d, virq + i, hwirq + i,
					      &crossbar_chip, NULL);
	}

	return 0;
}