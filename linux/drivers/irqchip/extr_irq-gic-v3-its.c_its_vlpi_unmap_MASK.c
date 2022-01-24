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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vlpi_lock; int /*<<< orphan*/  vlpi_maps; int /*<<< orphan*/ * vm; int /*<<< orphan*/  nr_vlpis; } ;
struct its_device {TYPE_1__ event_map; int /*<<< orphan*/  its; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int EINVAL ; 
 int LPI_PROP_DEFAULT_PRIO ; 
 int LPI_PROP_ENABLED ; 
 int LPI_PROP_GROUP1 ; 
 struct its_device* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct its_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct irq_data*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct irq_data *d)
{
	struct its_device *its_dev = FUNC0(d);
	u32 event = FUNC3(d);
	int ret = 0;

	FUNC9(&its_dev->event_map.vlpi_lock);

	if (!its_dev->event_map.vm || !FUNC2(d)) {
		ret = -EINVAL;
		goto out;
	}

	/* Drop the virtual mapping */
	FUNC4(its_dev, event);

	/* and restore the physical one */
	FUNC1(d);
	FUNC5(its_dev, d->hwirq, event);
	FUNC8(d, 0xff, (LPI_PROP_DEFAULT_PRIO |
				    LPI_PROP_ENABLED |
				    LPI_PROP_GROUP1));

	/* Potentially unmap the VM from this ITS */
	FUNC6(its_dev->its, its_dev->event_map.vm);

	/*
	 * Drop the refcount and make the device available again if
	 * this was the last VLPI.
	 */
	if (!--its_dev->event_map.nr_vlpis) {
		its_dev->event_map.vm = NULL;
		FUNC7(its_dev->event_map.vlpi_maps);
	}

out:
	FUNC10(&its_dev->event_map.vlpi_lock);
	return ret;
}