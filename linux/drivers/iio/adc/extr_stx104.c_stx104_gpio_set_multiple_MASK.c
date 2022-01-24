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
struct stx104_gpio {unsigned long out_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct stx104_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip,
	unsigned long *mask, unsigned long *bits)
{
	struct stx104_gpio *const stx104gpio = FUNC0(chip);
	unsigned long flags;

	/* verify masked GPIO are output */
	if (!(*mask & 0xF0))
		return;

	*mask >>= 4;
	*bits >>= 4;

	FUNC2(&stx104gpio->lock, flags);

	stx104gpio->out_state &= ~*mask;
	stx104gpio->out_state |= *mask & *bits;
	FUNC1(stx104gpio->out_state, stx104gpio->base);

	FUNC3(&stx104gpio->lock, flags);
}