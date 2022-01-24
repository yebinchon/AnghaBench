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
struct gpio_chip {int dummy; } ;
struct dio48e_gpio {unsigned int const* io_state; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 struct dio48e_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct dio48e_gpio *const dio48egpio = FUNC1(chip);
	const unsigned port = offset / 8;
	const unsigned mask = FUNC0(offset % 8);

	return !!(dio48egpio->io_state[port] & mask);
}