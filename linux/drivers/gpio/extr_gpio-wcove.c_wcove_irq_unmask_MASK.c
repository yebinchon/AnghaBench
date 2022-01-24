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
struct wcove_gpio {int set_irq_mask; int /*<<< orphan*/  update; } ;
struct irq_data {scalar_t__ hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UPDATE_IRQ_MASK ; 
 scalar_t__ WCOVE_GPIO_NUM ; 
 struct wcove_gpio* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC1(data);
	struct wcove_gpio *wg = FUNC0(chip);

	if (data->hwirq >= WCOVE_GPIO_NUM)
		return;

	wg->set_irq_mask = false;
	wg->update |= UPDATE_IRQ_MASK;
}