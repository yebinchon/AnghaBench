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
struct idio_16_gpio {unsigned long out_state; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct idio_16_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip,
	unsigned long *mask, unsigned long *bits)
{
	struct idio_16_gpio *const idio16gpio = FUNC0(chip);
	unsigned long flags;

	FUNC2(&idio16gpio->lock, flags);

	idio16gpio->out_state &= ~*mask;
	idio16gpio->out_state |= *mask & *bits;

	if (*mask & 0xFF)
		FUNC1(idio16gpio->out_state, idio16gpio->base);
	if ((*mask >> 8) & 0xFF)
		FUNC1(idio16gpio->out_state >> 8, idio16gpio->base + 4);

	FUNC3(&idio16gpio->lock, flags);
}