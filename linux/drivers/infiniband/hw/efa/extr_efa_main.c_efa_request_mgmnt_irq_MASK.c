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
struct efa_irq {int /*<<< orphan*/  affinity_hint_mask; int /*<<< orphan*/  vector; int /*<<< orphan*/  data; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
struct efa_dev {TYPE_1__* pdev; struct efa_irq admin_irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_cpumask_bits ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct efa_dev *dev)
{
	struct efa_irq *irq;
	int err;

	irq = &dev->admin_irq;
	err = FUNC3(irq->vector, irq->handler, 0, irq->name,
			  irq->data);
	if (err) {
		FUNC1(&dev->pdev->dev, "Failed to request admin irq (%d)\n",
			err);
		return err;
	}

	FUNC0(&dev->pdev->dev, "Set affinity hint of mgmnt irq to %*pbl (irq vector: %d)\n",
		nr_cpumask_bits, &irq->affinity_hint_mask, irq->vector);
	FUNC2(irq->vector, &irq->affinity_hint_mask);

	return 0;
}