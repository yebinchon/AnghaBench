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
struct irq_data {unsigned int hwirq; } ;
struct gpio_bank {int /*<<< orphan*/  lock; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  leveldetect0; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,unsigned int) ; 
 struct gpio_bank* FUNC3 (struct irq_data*) ; 
 int FUNC4 (struct gpio_bank*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned type)
{
	struct gpio_bank *bank = FUNC3(d);
	int retval;
	unsigned long flags;
	unsigned offset = d->hwirq;

	if (type & ~IRQ_TYPE_SENSE_MASK)
		return -EINVAL;

	if (!bank->regs->leveldetect0 &&
		(type & (IRQ_TYPE_LEVEL_LOW|IRQ_TYPE_LEVEL_HIGH)))
		return -EINVAL;

	FUNC5(&bank->lock, flags);
	retval = FUNC4(bank, offset, type);
	if (retval) {
		FUNC6(&bank->lock, flags);
		goto error;
	}
	FUNC1(bank, offset);
	if (!FUNC2(bank, offset)) {
		FUNC6(&bank->lock, flags);
		retval = -EINVAL;
		goto error;
	}
	FUNC6(&bank->lock, flags);

	if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
		FUNC0(d, handle_level_irq);
	else if (type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		/*
		 * Edge IRQs are already cleared/acked in irq_handler and
		 * not need to be masked, as result handle_edge_irq()
		 * logic is excessed here and may cause lose of interrupts.
		 * So just use handle_simple_irq.
		 */
		FUNC0(d, handle_simple_irq);

	return 0;

error:
	return retval;
}