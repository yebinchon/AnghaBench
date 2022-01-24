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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;
struct cdns_gpio_chip {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CDNS_GPIO_IRQ_EN ; 
 struct cdns_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct gpio_chip *chip = FUNC3(d);
	struct cdns_gpio_chip *cgpio = FUNC1(chip);

	FUNC2(FUNC0(d->hwirq), cgpio->regs + CDNS_GPIO_IRQ_EN);
}