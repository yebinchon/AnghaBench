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
struct max77620_gpio {int /*<<< orphan*/  dev; int /*<<< orphan*/  rmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int MAX77620_CNFG_GPIO_DIR_MASK ; 
 unsigned int MAX77620_CNFG_GPIO_INPUT_VAL_MASK ; 
 unsigned int MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct max77620_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned int offset)
{
	struct max77620_gpio *mgpio = FUNC2(gc);
	unsigned int val;
	int ret;

	ret = FUNC3(mgpio->rmap, FUNC0(offset), &val);
	if (ret < 0) {
		FUNC1(mgpio->dev, "CNFG_GPIOx read failed: %d\n", ret);
		return ret;
	}

	if  (val & MAX77620_CNFG_GPIO_DIR_MASK)
		return !!(val & MAX77620_CNFG_GPIO_INPUT_VAL_MASK);
	else
		return !!(val & MAX77620_CNFG_GPIO_OUTPUT_VAL_MASK);
}