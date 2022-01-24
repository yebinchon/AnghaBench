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

/* Variables and functions */
 int FUNC0 (struct gpio_chip*,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *chip, unsigned nr)
{
	/*
	 * Fixups for bits 16 and 17 are necessary on the Intel ICH6/3100
	 * bridge as they are controlled by USE register bits 0 and 1.  See
	 * "Table 704 GPIO_USE_SEL1 register" in the i3100 datasheet for
	 * additional info.
	 */
	if (nr == 16 || nr == 17)
		nr -= 16;

	return FUNC0(chip, nr);
}