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
struct ws16c48_gpio {unsigned int const* io_state; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 struct ws16c48_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct ws16c48_gpio *const ws16c48gpio = FUNC1(chip);
	const unsigned port = offset / 8;
	const unsigned mask = FUNC0(offset % 8);

	return !!(ws16c48gpio->io_state[port] & mask);
}