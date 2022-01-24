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
struct its_node {int /*<<< orphan*/  dev_alloc_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  col_map; int /*<<< orphan*/  nr_lpis; int /*<<< orphan*/  lpi_base; int /*<<< orphan*/  lpi_map; } ;
struct its_device {TYPE_1__ event_map; int /*<<< orphan*/  shared; struct its_node* its; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct its_device* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC5 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct its_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct its_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct irq_domain *domain, unsigned int virq,
				unsigned int nr_irqs)
{
	struct irq_data *d = FUNC5(domain, virq);
	struct its_device *its_dev = FUNC3(d);
	struct its_node *its = its_dev->its;
	int i;

	FUNC1(its_dev->event_map.lpi_map,
			      FUNC8(FUNC5(domain, virq)),
			      FUNC2(nr_irqs));

	for (i = 0; i < nr_irqs; i++) {
		struct irq_data *data = FUNC5(domain,
								virq + i);
		/* Nuke the entry in the domain */
		FUNC6(data);
	}

	FUNC12(&its->dev_alloc_lock);

	/*
	 * If all interrupts have been freed, start mopping the
	 * floor. This is conditionned on the device not being shared.
	 */
	if (!its_dev->shared &&
	    FUNC0(its_dev->event_map.lpi_map,
			 its_dev->event_map.nr_lpis)) {
		FUNC9(its_dev->event_map.lpi_map,
			     its_dev->event_map.lpi_base,
			     its_dev->event_map.nr_lpis);
		FUNC11(its_dev->event_map.col_map);

		/* Unmap device/itt */
		FUNC10(its_dev, 0);
		FUNC7(its_dev);
	}

	FUNC13(&its->dev_alloc_lock);

	FUNC4(domain, virq, nr_irqs);
}