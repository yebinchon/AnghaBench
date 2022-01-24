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
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 struct gpio_chip* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_data *d)
{
	struct gpio_chip *chip = FUNC1(d);
	int ret;

	ret = FUNC2(chip->parent);
	if (ret < 0)
		return ret;

	return FUNC0(chip, d->hwirq);
}