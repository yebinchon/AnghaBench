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
struct irq_data {size_t hwirq; } ;
struct bcm7038_l1_chip {int /*<<< orphan*/  lock; int /*<<< orphan*/ * affinity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_data*,int /*<<< orphan*/ ) ; 
 struct bcm7038_l1_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct bcm7038_l1_chip *intc = FUNC1(d);
	unsigned long flags;

	FUNC2(&intc->lock, flags);
	FUNC0(d, intc->affinity[d->hwirq]);
	FUNC3(&intc->lock, flags);
}