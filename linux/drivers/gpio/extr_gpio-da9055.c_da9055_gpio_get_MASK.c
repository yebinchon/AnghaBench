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
struct da9055_gpio {int /*<<< orphan*/  da9055; } ;

/* Variables and functions */
#define  DA9055_INPUT 129 
#define  DA9055_OUTPUT 128 
 int DA9055_PORT_MASK ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ DA9055_REG_GPIO0_1 ; 
 scalar_t__ DA9055_REG_GPIO_MODE0_2 ; 
 scalar_t__ DA9055_REG_STATUS_B ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct da9055_gpio* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned offset)
{
	struct da9055_gpio *gpio = FUNC2(gc);
	int gpio_direction = 0;
	int ret;

	/* Get GPIO direction */
	ret = FUNC1(gpio->da9055, (offset >> 1) + DA9055_REG_GPIO0_1);
	if (ret < 0)
		return ret;

	gpio_direction = ret & (DA9055_PORT_MASK) << FUNC0(offset);
	gpio_direction >>= FUNC0(offset);
	switch (gpio_direction) {
	case DA9055_INPUT:
		ret = FUNC1(gpio->da9055, DA9055_REG_STATUS_B);
		if (ret < 0)
			return ret;
		break;
	case DA9055_OUTPUT:
		ret = FUNC1(gpio->da9055, DA9055_REG_GPIO_MODE0_2);
		if (ret < 0)
			return ret;
	}

	return ret & (1 << offset);

}