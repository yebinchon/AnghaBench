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
struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 struct gpio_bank* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_bank*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct gpio_bank *bank = FUNC0(d);
	unsigned offset = d->hwirq;
	unsigned long flags;

	FUNC3(&bank->lock, flags);
	FUNC2(bank, offset, IRQ_TYPE_NONE);
	FUNC1(bank, offset, 0);
	FUNC4(&bank->lock, flags);
}