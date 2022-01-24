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
struct irq_fwspec {int param_count; int /*<<< orphan*/  fwnode; scalar_t__* param; } ;
struct irq_domain {TYPE_1__* parent; int /*<<< orphan*/  host_data; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct irq_domain*,unsigned int,unsigned int,struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtk_sysirq_chip ; 

__attribute__((used)) static int FUNC2(struct irq_domain *domain, unsigned int virq,
				   unsigned int nr_irqs, void *arg)
{
	int i;
	irq_hw_number_t hwirq;
	struct irq_fwspec *fwspec = arg;
	struct irq_fwspec gic_fwspec = *fwspec;

	if (fwspec->param_count != 3)
		return -EINVAL;

	/* sysirq doesn't support PPI */
	if (fwspec->param[0])
		return -EINVAL;

	hwirq = fwspec->param[1];
	for (i = 0; i < nr_irqs; i++)
		FUNC1(domain, virq + i, hwirq + i,
					      &mtk_sysirq_chip,
					      domain->host_data);

	gic_fwspec.fwnode = domain->parent->fwnode;
	return FUNC0(domain, virq, nr_irqs, &gic_fwspec);
}