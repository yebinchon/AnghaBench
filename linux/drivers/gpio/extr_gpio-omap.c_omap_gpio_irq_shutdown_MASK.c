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
struct gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  mod_usage; int /*<<< orphan*/  irq_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_bank*,unsigned int) ; 
 struct gpio_bank* FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_bank*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_bank*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct irq_data *d)
{
	struct gpio_bank *bank = FUNC5(d);
	unsigned long flags;
	unsigned offset = d->hwirq;

	FUNC8(&bank->lock, flags);
	bank->irq_usage &= ~(FUNC0(offset));
	FUNC7(bank, offset, IRQ_TYPE_NONE);
	FUNC3(bank, offset);
	FUNC6(bank, offset, 0);
	if (!FUNC1(bank->mod_usage, offset))
		FUNC2(bank, offset);
	FUNC4(bank, offset);
	FUNC9(&bank->lock, flags);
}