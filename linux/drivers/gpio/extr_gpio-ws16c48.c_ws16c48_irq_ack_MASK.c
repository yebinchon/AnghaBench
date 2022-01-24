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
struct ws16c48_gpio {int irq_mask; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long const) ; 
 struct ws16c48_gpio* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 unsigned long FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC2(data);
	struct ws16c48_gpio *const ws16c48gpio = FUNC1(chip);
	const unsigned long offset = FUNC3(data);
	const unsigned port = offset / 8;
	const unsigned mask = FUNC0(offset % 8);
	unsigned long flags;
	unsigned port_state;

	/* only the first 3 ports support interrupts */
	if (port > 2)
		return;

	FUNC5(&ws16c48gpio->lock, flags);

	port_state = ws16c48gpio->irq_mask >> (8*port);

	FUNC4(0x80, ws16c48gpio->base + 7);
	FUNC4(port_state & ~mask, ws16c48gpio->base + 8 + port);
	FUNC4(port_state | mask, ws16c48gpio->base + 8 + port);
	FUNC4(0xC0, ws16c48gpio->base + 7);

	FUNC6(&ws16c48gpio->lock, flags);
}