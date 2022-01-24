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
struct ws16c48_gpio {unsigned int const* io_state; int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 struct ws16c48_gpio* FUNC1 (struct gpio_chip*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct ws16c48_gpio *const ws16c48gpio = FUNC1(chip);
	const unsigned port = offset / 8;
	const unsigned mask = FUNC0(offset % 8);
	unsigned long flags;
	unsigned port_state;

	FUNC3(&ws16c48gpio->lock, flags);

	/* ensure that GPIO is set for input */
	if (!(ws16c48gpio->io_state[port] & mask)) {
		FUNC4(&ws16c48gpio->lock, flags);
		return -EINVAL;
	}

	port_state = FUNC2(ws16c48gpio->base + port);

	FUNC4(&ws16c48gpio->lock, flags);

	return !!(port_state & mask);
}