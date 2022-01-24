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
struct its_node {int /*<<< orphan*/  (* get_msi_base ) (struct its_device*) ;} ;
struct TYPE_5__ {scalar_t__ lpi_base; } ;
struct its_device {TYPE_2__ event_map; struct its_node* its; } ;
struct irq_domain {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  desc; TYPE_1__* scratchpad; } ;
typedef  TYPE_3__ msi_alloc_info_t ;
typedef  scalar_t__ irq_hw_number_t ;
struct TYPE_4__ {struct its_device* ptr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_domain*,unsigned int,scalar_t__,int /*<<< orphan*/ *,struct its_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct its_device*,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  its_irq_chip ; 
 int FUNC6 (struct irq_domain*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct its_device*) ; 

__attribute__((used)) static int FUNC9(struct irq_domain *domain, unsigned int virq,
				unsigned int nr_irqs, void *args)
{
	msi_alloc_info_t *info = args;
	struct its_device *its_dev = info->scratchpad[0].ptr;
	struct its_node *its = its_dev->its;
	irq_hw_number_t hwirq;
	int err;
	int i;

	err = FUNC5(its_dev, nr_irqs, &hwirq);
	if (err)
		return err;

	err = FUNC0(info->desc, its->get_msi_base(its_dev));
	if (err)
		return err;

	for (i = 0; i < nr_irqs; i++) {
		err = FUNC6(domain, virq + i, hwirq + i);
		if (err)
			return err;

		FUNC2(domain, virq + i,
					      hwirq + i, &its_irq_chip, its_dev);
		FUNC4(FUNC1(FUNC3(virq + i)));
		FUNC7("ID:%d pID:%d vID:%d\n",
			 (int)(hwirq + i - its_dev->event_map.lpi_base),
			 (int)(hwirq + i), virq + i);
	}

	return 0;
}