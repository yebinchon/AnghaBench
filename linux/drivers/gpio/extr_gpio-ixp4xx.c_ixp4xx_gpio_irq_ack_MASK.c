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
struct ixp4xx_gpio {scalar_t__ base; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IXP4XX_REG_GPIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ixp4xx_gpio* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC3(d);
	struct ixp4xx_gpio *g = FUNC2(gc);

	FUNC1(FUNC0(d->hwirq), g->base + IXP4XX_REG_GPIS);
}