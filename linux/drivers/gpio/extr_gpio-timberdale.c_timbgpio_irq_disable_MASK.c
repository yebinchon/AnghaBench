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
struct timbgpio {int irq_base; unsigned long last_ier; int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct irq_data {int irq; } ;

/* Variables and functions */
 scalar_t__ TGPIO_IER ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 
 struct timbgpio* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct timbgpio *tgpio = FUNC1(d);
	int offset = d->irq - tgpio->irq_base;
	unsigned long flags;

	FUNC2(&tgpio->lock, flags);
	tgpio->last_ier &= ~(1UL << offset);
	FUNC0(tgpio->last_ier, tgpio->membase + TGPIO_IER);
	FUNC3(&tgpio->lock, flags);
}