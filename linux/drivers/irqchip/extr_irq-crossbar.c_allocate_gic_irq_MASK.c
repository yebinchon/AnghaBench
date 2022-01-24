#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct irq_fwspec {int param_count; int* param; int /*<<< orphan*/  fwnode; } ;
struct irq_domain {TYPE_1__* parent; } ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {int int_max; scalar_t__* irq_map; int /*<<< orphan*/  (* write ) (int,scalar_t__) ;int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ IRQ_FREE ; 
 int IRQ_TYPE_LEVEL_HIGH ; 
 TYPE_2__* cb ; 
 int FUNC0 (struct irq_domain*,unsigned int,int,struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct irq_domain *domain, unsigned virq,
			    irq_hw_number_t hwirq)
{
	struct irq_fwspec fwspec;
	int i;
	int err;

	if (!FUNC1(domain->parent))
		return -EINVAL;

	FUNC2(&cb->lock);
	for (i = cb->int_max - 1; i >= 0; i--) {
		if (cb->irq_map[i] == IRQ_FREE) {
			cb->irq_map[i] = hwirq;
			break;
		}
	}
	FUNC3(&cb->lock);

	if (i < 0)
		return -ENODEV;

	fwspec.fwnode = domain->parent->fwnode;
	fwspec.param_count = 3;
	fwspec.param[0] = 0;	/* SPI */
	fwspec.param[1] = i;
	fwspec.param[2] = IRQ_TYPE_LEVEL_HIGH;

	err = FUNC0(domain, virq, 1, &fwspec);
	if (err)
		cb->irq_map[i] = IRQ_FREE;
	else
		cb->write(i, hwirq);

	return err;
}