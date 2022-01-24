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
 scalar_t__ DA9052_GPIO_0_1_REG ; 
 int DA9052_GPIO_EVEN_PORT_MODE ; 
 int DA9052_GPIO_EVEN_PORT_PIN ; 
 unsigned int DA9052_GPIO_MAX_PORTS_PER_REGISTER ; 
 int DA9052_GPIO_ODD_PORT_MODE ; 
 int DA9052_GPIO_ODD_PORT_PIN ; 
 int FUNC0 (unsigned int) ; 
#define  DA9052_INPUT 129 
#define  DA9052_OUTPUT_PUSHPULL 128 
 scalar_t__ DA9052_STATUS_C_REG ; 
 scalar_t__ DA9052_STATUS_D_REG ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct da9052_gpio* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned offset)
{
	struct da9052_gpio *gpio = FUNC3(gc);
	int da9052_port_direction = 0;
	int ret;

	ret = FUNC2(gpio->da9052,
			      DA9052_GPIO_0_1_REG + (offset >> 1));
	if (ret < 0)
		return ret;

	if (FUNC1(offset)) {
		da9052_port_direction = ret & DA9052_GPIO_ODD_PORT_PIN;
		da9052_port_direction >>= 4;
	} else {
		da9052_port_direction = ret & DA9052_GPIO_EVEN_PORT_PIN;
	}

	switch (da9052_port_direction) {
	case DA9052_INPUT:
		if (offset < DA9052_GPIO_MAX_PORTS_PER_REGISTER)
			ret = FUNC2(gpio->da9052,
					      DA9052_STATUS_C_REG);
		else
			ret = FUNC2(gpio->da9052,
					      DA9052_STATUS_D_REG);
		if (ret < 0)
			return ret;
		return !!(ret & (1 << FUNC0(offset)));
	case DA9052_OUTPUT_PUSHPULL:
		if (FUNC1(offset))
			return !!(ret & DA9052_GPIO_ODD_PORT_MODE);
		else
			return !!(ret & DA9052_GPIO_EVEN_PORT_MODE);
	default:
		return -EINVAL;
	}
}