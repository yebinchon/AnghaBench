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
struct lpc18xx_gpio_pin_ic {int /*<<< orphan*/  lock; } ;
struct irq_data {int /*<<< orphan*/  hwirq; struct lpc18xx_gpio_pin_ic* chip_data; } ;

/* Variables and functions */
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 int /*<<< orphan*/  LPC18XX_GPIO_PIN_IC_CIENF ; 
 int /*<<< orphan*/  LPC18XX_GPIO_PIN_IC_SIENF ; 
 int /*<<< orphan*/  FUNC0 (struct lpc18xx_gpio_pin_ic*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc18xx_gpio_pin_ic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct irq_data *d, unsigned int type)
{
	struct lpc18xx_gpio_pin_ic *ic = d->chip_data;

	FUNC2(&ic->lock);

	if (type & IRQ_TYPE_LEVEL_HIGH) {
		FUNC0(ic, d->hwirq, true);
		FUNC1(ic, d->hwirq,
					LPC18XX_GPIO_PIN_IC_SIENF);
	} else if (type & IRQ_TYPE_LEVEL_LOW) {
		FUNC0(ic, d->hwirq, true);
		FUNC1(ic, d->hwirq,
					LPC18XX_GPIO_PIN_IC_CIENF);
	} else {
		FUNC0(ic, d->hwirq, false);
	}

	FUNC3(&ic->lock);

	return 0;
}