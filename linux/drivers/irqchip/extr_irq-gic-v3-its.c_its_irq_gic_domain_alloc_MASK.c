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
struct irq_fwspec {int param_count; void** param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {TYPE_1__* parent; } ;
typedef  void* irq_hw_number_t ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 void* GIC_IRQ_TYPE_LPI ; 
 void* IRQ_TYPE_EDGE_RISING ; 
 int FUNC0 (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *domain,
				    unsigned int virq,
				    irq_hw_number_t hwirq)
{
	struct irq_fwspec fwspec;

	if (FUNC1(domain->parent)) {
		fwspec.fwnode = domain->parent->fwnode;
		fwspec.param_count = 3;
		fwspec.param[0] = GIC_IRQ_TYPE_LPI;
		fwspec.param[1] = hwirq;
		fwspec.param[2] = IRQ_TYPE_EDGE_RISING;
	} else if (FUNC2(domain->parent->fwnode)) {
		fwspec.fwnode = domain->parent->fwnode;
		fwspec.param_count = 2;
		fwspec.param[0] = hwirq;
		fwspec.param[1] = IRQ_TYPE_EDGE_RISING;
	} else {
		return -EINVAL;
	}

	return FUNC0(domain, virq, 1, &fwspec);
}