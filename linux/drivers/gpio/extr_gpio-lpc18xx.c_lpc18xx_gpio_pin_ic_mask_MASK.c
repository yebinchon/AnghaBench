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
struct lpc18xx_gpio_pin_ic {int /*<<< orphan*/  lock; } ;
struct irq_data {int /*<<< orphan*/  hwirq; struct lpc18xx_gpio_pin_ic* chip_data; } ;

/* Variables and functions */
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int IRQ_TYPE_LEVEL_MASK ; 
 int /*<<< orphan*/  LPC18XX_GPIO_PIN_IC_CIENF ; 
 int /*<<< orphan*/  LPC18XX_GPIO_PIN_IC_CIENR ; 
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc18xx_gpio_pin_ic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct lpc18xx_gpio_pin_ic *ic = d->chip_data;
	u32 type = FUNC1(d);

	FUNC3(&ic->lock);

	if (type & IRQ_TYPE_LEVEL_MASK || type & IRQ_TYPE_EDGE_RISING)
		FUNC2(ic, d->hwirq,
					LPC18XX_GPIO_PIN_IC_CIENR);

	if (type & IRQ_TYPE_EDGE_FALLING)
		FUNC2(ic, d->hwirq,
					LPC18XX_GPIO_PIN_IC_CIENF);

	FUNC4(&ic->lock);

	FUNC0(d);
}