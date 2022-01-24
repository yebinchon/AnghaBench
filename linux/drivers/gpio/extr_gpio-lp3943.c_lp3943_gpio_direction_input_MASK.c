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
struct lp3943_gpio {int /*<<< orphan*/  input_mask; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  LP3943_GPIO_IN ; 
 struct lp3943_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct lp3943_gpio*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct lp3943_gpio *lp3943_gpio = FUNC1(chip);

	lp3943_gpio->input_mask |= FUNC0(offset);

	return FUNC2(lp3943_gpio, offset, LP3943_GPIO_IN);
}