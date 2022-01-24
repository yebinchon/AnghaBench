#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct keystone_irq_device {unsigned long mask; int /*<<< orphan*/  dev; int /*<<< orphan*/  wa_lock; int /*<<< orphan*/  irqd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 unsigned long BIT_OFS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int KEYSTONE_N_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC5 (struct keystone_irq_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct keystone_irq_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *keystone_irq)
{
	struct keystone_irq_device *kirq = keystone_irq;
	unsigned long wa_lock_flags;
	unsigned long pending;
	int src, virq;

	FUNC1(kirq->dev, "start irq %d\n", irq);

	pending = FUNC5(kirq);
	FUNC6(kirq, pending);

	FUNC1(kirq->dev, "pending 0x%lx, mask 0x%x\n", pending, kirq->mask);

	pending = (pending >> BIT_OFS) & ~kirq->mask;

	FUNC1(kirq->dev, "pending after mask 0x%lx\n", pending);

	for (src = 0; src < KEYSTONE_N_IRQ; src++) {
		if (FUNC0(src) & pending) {
			virq = FUNC4(kirq->irqd, src);
			FUNC1(kirq->dev, "dispatch bit %d, virq %d\n",
				src, virq);
			if (!virq)
				FUNC2(kirq->dev, "spurious irq detected hwirq %d, virq %d\n",
					 src, virq);
			FUNC7(&kirq->wa_lock, wa_lock_flags);
			FUNC3(virq);
			FUNC8(&kirq->wa_lock,
						   wa_lock_flags);
		}
	}

	FUNC1(kirq->dev, "end irq %d\n", irq);
	return IRQ_HANDLED;
}