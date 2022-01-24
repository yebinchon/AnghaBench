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
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct dln2_gpio {int /*<<< orphan*/  unmasked_irqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct dln2_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *irqd)
{
	struct gpio_chip *gc = FUNC2(irqd);
	struct dln2_gpio *dln2 = FUNC1(gc);
	int pin = FUNC3(irqd);

	FUNC0(pin, dln2->unmasked_irqs);
}