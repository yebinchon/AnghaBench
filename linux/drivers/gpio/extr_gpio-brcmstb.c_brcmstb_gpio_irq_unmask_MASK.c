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
struct brcmstb_gpio_bank {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmstb_gpio_bank*,int /*<<< orphan*/ ,int) ; 
 struct brcmstb_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC2(d);
	struct brcmstb_gpio_bank *bank = FUNC1(gc);

	FUNC0(bank, d->hwirq, true);
}