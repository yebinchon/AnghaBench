#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gpio_chip {int dummy; } ;
struct da9052_gpio {TYPE_1__* da9052; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ DA9052_GPIO_0_1_REG ; 
 int /*<<< orphan*/  DA9052_GPIO_EVEN_PORT_MODE ; 
 int DA9052_GPIO_EVEN_SHIFT ; 
 int /*<<< orphan*/  DA9052_GPIO_ODD_PORT_MODE ; 
 int DA9052_GPIO_ODD_SHIFT ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct da9052_gpio* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc, unsigned offset, int value)
{
	struct da9052_gpio *gpio = FUNC3(gc);
	int ret;

	if (FUNC0(offset)) {
			ret = FUNC1(gpio->da9052, (offset >> 1) +
						DA9052_GPIO_0_1_REG,
						DA9052_GPIO_ODD_PORT_MODE,
						value << DA9052_GPIO_ODD_SHIFT);
			if (ret != 0)
				FUNC2(gpio->da9052->dev,
					"Failed to updated gpio odd reg,%d",
					ret);
	} else {
			ret = FUNC1(gpio->da9052, (offset >> 1) +
						DA9052_GPIO_0_1_REG,
						DA9052_GPIO_EVEN_PORT_MODE,
						value << DA9052_GPIO_EVEN_SHIFT);
			if (ret != 0)
				FUNC2(gpio->da9052->dev,
					"Failed to updated gpio even reg,%d",
					ret);
	}
}