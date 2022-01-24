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
struct da9052_gpio {int /*<<< orphan*/  da9052; } ;

/* Variables and functions */
 int DA9052_ACTIVE_LOW ; 
 int DA9052_DEBOUNCING_ON ; 
 scalar_t__ DA9052_GPIO_0_1_REG ; 
 int /*<<< orphan*/  DA9052_GPIO_MASK_LOWER_NIBBLE ; 
 int /*<<< orphan*/  DA9052_GPIO_MASK_UPPER_NIBBLE ; 
 unsigned char DA9052_GPIO_NIBBLE_SHIFT ; 
 int DA9052_INPUT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,unsigned char) ; 
 struct da9052_gpio* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct da9052_gpio *gpio = FUNC2(gc);
	unsigned char register_value;
	int ret;

	/* Format: function - 2 bits type - 1 bit mode - 1 bit */
	register_value = DA9052_INPUT | DA9052_ACTIVE_LOW << 2 |
			 DA9052_DEBOUNCING_ON << 3;

	if (FUNC0(offset))
		ret = FUNC1(gpio->da9052, (offset >> 1) +
					DA9052_GPIO_0_1_REG,
					DA9052_GPIO_MASK_UPPER_NIBBLE,
					(register_value <<
					DA9052_GPIO_NIBBLE_SHIFT));
	else
		ret = FUNC1(gpio->da9052, (offset >> 1) +
					DA9052_GPIO_0_1_REG,
					DA9052_GPIO_MASK_LOWER_NIBBLE,
					register_value);

	return ret;
}