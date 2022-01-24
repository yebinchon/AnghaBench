#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mvebu_sei {TYPE_3__* caps; } ;
struct irq_fwspec {int param_count; scalar_t__* param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {TYPE_1__* parent; struct mvebu_sei* host_data; } ;
struct TYPE_5__ {scalar_t__ first; } ;
struct TYPE_6__ {TYPE_2__ ap_range; } ;
struct TYPE_4__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  handle_level_irq ; 
 int FUNC0 (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,unsigned long,int /*<<< orphan*/ *,struct mvebu_sei*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  mvebu_sei_ap_irq_chip ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,void*,unsigned long*,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *domain, unsigned int virq,
			      unsigned int nr_irqs, void *arg)
{
	struct mvebu_sei *sei = domain->host_data;
	struct irq_fwspec fwspec;
	unsigned long hwirq;
	unsigned int type;
	int err;

	FUNC3(domain, arg, &hwirq, &type);

	fwspec.fwnode = domain->parent->fwnode;
	fwspec.param_count = 1;
	fwspec.param[0] = hwirq + sei->caps->ap_range.first;

	err = FUNC0(domain, virq, 1, &fwspec);
	if (err)
		return err;

	FUNC1(domain, virq, hwirq,
			    &mvebu_sei_ap_irq_chip, sei,
			    handle_level_irq, NULL, NULL);
	FUNC2(virq);

	return 0;
}