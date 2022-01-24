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
struct thunderx_gpio {scalar_t__ register_base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_INTR_INTR ; 
 struct thunderx_gpio* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC2(d);
	struct thunderx_gpio *txgpio = FUNC0(gc);

	FUNC4(GPIO_INTR_INTR,
	       txgpio->register_base + FUNC1(FUNC3(d)));
}