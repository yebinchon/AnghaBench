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
struct idio_16_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 struct idio_16_gpio* FUNC1 (struct gpio_chip*) ; 
 unsigned int const FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct idio_16_gpio *const idio16gpio = FUNC1(chip);
	const unsigned mask = FUNC0(offset-16);

	if (offset < 16)
		return -EINVAL;

	if (offset < 24)
		return !!(FUNC2(idio16gpio->base + 1) & mask);

	return !!(FUNC2(idio16gpio->base + 5) & (mask>>8));
}