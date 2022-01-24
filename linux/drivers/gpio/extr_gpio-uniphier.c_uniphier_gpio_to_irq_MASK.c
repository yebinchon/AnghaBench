#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_fwspec {int param_count; unsigned int* param; int /*<<< orphan*/  fwnode; } ;
struct gpio_chip {TYPE_1__* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int UNIPHIER_GPIO_IRQ_OFFSET ; 
 int FUNC0 (struct irq_fwspec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned int offset)
{
	struct irq_fwspec fwspec;

	if (offset < UNIPHIER_GPIO_IRQ_OFFSET)
		return -ENXIO;

	fwspec.fwnode = FUNC1(chip->parent->of_node);
	fwspec.param_count = 2;
	fwspec.param[0] = offset - UNIPHIER_GPIO_IRQ_OFFSET;
	/*
	 * IRQ_TYPE_NONE is rejected by the parent irq domain. Set LEVEL_HIGH
	 * temporarily. Anyway, ->irq_set_type() will override it later.
	 */
	fwspec.param[1] = IRQ_TYPE_LEVEL_HIGH;

	return FUNC0(&fwspec);
}