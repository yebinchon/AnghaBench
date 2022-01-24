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
typedef  int u32 ;
struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct TYPE_2__ {scalar_t__ wkup_en; scalar_t__ leveldetect0; } ;

/* Variables and functions */
 int IRQ_TYPE_LEVEL_HIGH ; 
 int IRQ_TYPE_LEVEL_LOW ; 
 int FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_bank*,unsigned int) ; 
 struct gpio_bank* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_bank*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_bank*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *d)
{
	struct gpio_bank *bank = FUNC2(d);
	unsigned offset = d->hwirq;
	u32 trigger = FUNC0(d);
	unsigned long flags;

	FUNC5(&bank->lock, flags);
	FUNC3(bank, offset, 1);

	/*
	 * For level-triggered GPIOs, clearing must be done after the source
	 * is cleared, thus after the handler has run. OMAP4 needs this done
	 * after enabing the interrupt to clear the wakeup status.
	 */
	if (bank->regs->leveldetect0 && bank->regs->wkup_en &&
	    trigger & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW))
		FUNC1(bank, offset);

	if (trigger)
		FUNC4(bank, offset, trigger);

	FUNC6(&bank->lock, flags);
}