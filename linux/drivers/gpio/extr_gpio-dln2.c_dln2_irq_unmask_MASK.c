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
 struct dln2_gpio* FUNC0 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *irqd)
{
	struct gpio_chip *gc = FUNC1(irqd);
	struct dln2_gpio *dln2 = FUNC0(gc);
	int pin = FUNC2(irqd);

	FUNC3(pin, dln2->unmasked_irqs);
}