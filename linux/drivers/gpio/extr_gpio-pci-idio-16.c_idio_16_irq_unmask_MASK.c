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
struct irq_data {int dummy; } ;
struct idio_16_gpio {unsigned long irq_mask; int /*<<< orphan*/  lock; TYPE_1__* reg; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_ctl; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct idio_16_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC3(data);
	struct idio_16_gpio *const idio16gpio = FUNC1(chip);
	const unsigned long mask = FUNC0(FUNC4(data));
	const unsigned long prev_irq_mask = idio16gpio->irq_mask;
	unsigned long flags;

	idio16gpio->irq_mask |= mask;

	if (!prev_irq_mask) {
		FUNC5(&idio16gpio->lock, flags);

		FUNC2(&idio16gpio->reg->irq_ctl);

		FUNC6(&idio16gpio->lock, flags);
	}
}