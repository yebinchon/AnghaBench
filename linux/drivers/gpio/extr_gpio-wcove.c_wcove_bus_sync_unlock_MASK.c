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
struct wcove_gpio {int update; int /*<<< orphan*/  buslock; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int UPDATE_IRQ_MASK ; 
 int UPDATE_IRQ_TYPE ; 
 struct wcove_gpio* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wcove_gpio*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wcove_gpio*,int) ; 

__attribute__((used)) static void FUNC5(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC1(data);
	struct wcove_gpio *wg = FUNC0(chip);
	int gpio = data->hwirq;

	if (wg->update & UPDATE_IRQ_TYPE)
		FUNC3(wg, gpio);
	if (wg->update & UPDATE_IRQ_MASK)
		FUNC4(wg, gpio);
	wg->update = 0;

	FUNC2(&wg->buslock);
}