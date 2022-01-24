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
struct lp3943_gpio {int input_mask; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 struct lp3943_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct lp3943_gpio*,struct gpio_chip*,unsigned int) ; 
 int FUNC3 (struct lp3943_gpio*,struct gpio_chip*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct lp3943_gpio *lp3943_gpio = FUNC1(chip);

	/*
	 * Limitation:
	 *   LP3943 doesn't have the GPIO direction register. It provides
	 *   only input and output status registers.
	 *   So, direction info is required to handle the 'get' operation.
	 *   This variable is updated whenever the direction is changed and
	 *   it is used here.
	 */

	if (lp3943_gpio->input_mask & FUNC0(offset))
		return FUNC2(lp3943_gpio, chip, offset);
	else
		return FUNC3(lp3943_gpio, chip, offset);
}