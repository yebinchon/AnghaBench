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
struct gpio_bank {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_usage; int /*<<< orphan*/  mod_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_bank*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 struct gpio_bank* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_bank*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC8(struct irq_data *d)
{
	struct gpio_bank *bank = FUNC4(d);
	unsigned long flags;
	unsigned offset = d->hwirq;

	FUNC6(&bank->lock, flags);

	if (!FUNC1(bank->mod_usage, offset))
		FUNC5(bank, offset, 1);
	FUNC2(bank, offset);
	bank->irq_usage |= FUNC0(offset);

	FUNC7(&bank->lock, flags);
	FUNC3(d);

	return 0;
}