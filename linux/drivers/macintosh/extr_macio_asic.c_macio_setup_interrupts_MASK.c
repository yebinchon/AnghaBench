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
struct resource {unsigned int start; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;
struct macio_dev {int n_interrupts; TYPE_1__ ofdev; struct resource* interrupt; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int MACIO_DEV_COUNT_IRQS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 unsigned int FUNC1 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct macio_dev *dev)
{
	struct device_node *np = dev->ofdev.dev.of_node;
	unsigned int irq;
	int i = 0, j = 0;

	for (;;) {
		struct resource *res;

		if (j >= MACIO_DEV_COUNT_IRQS)
			break;
		res = &dev->interrupt[j];
		irq = FUNC1(np, i++);
		if (!irq)
			break;
		res->start = irq;
		res->flags = IORESOURCE_IRQ;
		res->name = FUNC0(&dev->ofdev.dev);
		if (FUNC2(np, res, i - 1)) {
			FUNC3(res, 0, sizeof(struct resource));
			continue;
		} else
			j++;
	}
	dev->n_interrupts = j;
}