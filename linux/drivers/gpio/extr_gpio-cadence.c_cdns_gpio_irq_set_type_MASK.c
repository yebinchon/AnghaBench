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
typedef  int u32 ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int /*<<< orphan*/  bgpio_lock; } ;
struct cdns_gpio_chip {scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CDNS_GPIO_IRQ_TYPE ; 
 scalar_t__ CDNS_GPIO_IRQ_VALUE ; 
 int EINVAL ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 struct cdns_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *chip = FUNC4(d);
	struct cdns_gpio_chip *cgpio = FUNC1(chip);
	unsigned long flags;
	u32 int_value;
	u32 int_type;
	u32 mask = FUNC0(d->hwirq);
	int ret = 0;

	FUNC5(&chip->bgpio_lock, flags);

	int_value = FUNC2(cgpio->regs + CDNS_GPIO_IRQ_VALUE) & ~mask;
	int_type = FUNC2(cgpio->regs + CDNS_GPIO_IRQ_TYPE) & ~mask;

	/*
	 * The GPIO controller doesn't have an ACK register.
	 * All interrupt statuses are cleared on a status register read.
	 * Don't support edge interrupts for now.
	 */

	if (type == IRQ_TYPE_LEVEL_HIGH) {
		int_type |= mask;
		int_value |= mask;
	} else if (type == IRQ_TYPE_LEVEL_LOW) {
		int_type |= mask;
	} else {
		ret = -EINVAL;
		goto err_irq_type;
	}

	FUNC3(int_value, cgpio->regs + CDNS_GPIO_IRQ_VALUE);
	FUNC3(int_type, cgpio->regs + CDNS_GPIO_IRQ_TYPE);

err_irq_type:
	FUNC6(&chip->bgpio_lock, flags);
	return ret;
}