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
struct altera_gpio_chip {unsigned int interrupt_trigger; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_NONE ; 
 struct altera_gpio_chip* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d,
				   unsigned int type)
{
	struct altera_gpio_chip *altera_gc;

	altera_gc = FUNC0(FUNC1(d));

	if (type == IRQ_TYPE_NONE) {
		FUNC2(d, handle_bad_irq);
		return 0;
	}
	if (type == altera_gc->interrupt_trigger) {
		if (type == IRQ_TYPE_LEVEL_HIGH)
			FUNC2(d, handle_level_irq);
		else
			FUNC2(d, handle_simple_irq);
		return 0;
	}
	FUNC2(d, handle_bad_irq);
	return -EINVAL;
}