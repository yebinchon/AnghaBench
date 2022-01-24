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
struct max77620_gpio {int /*<<< orphan*/  rmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MAX77620_CNFG_GPIO_DRV_MASK ; 
 int /*<<< orphan*/  MAX77620_CNFG_GPIO_DRV_OPENDRAIN ; 
 int /*<<< orphan*/  MAX77620_CNFG_GPIO_DRV_PUSHPULL ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 struct max77620_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct max77620_gpio*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *gc, unsigned int offset,
				    unsigned long config)
{
	struct max77620_gpio *mgpio = FUNC1(gc);

	switch (FUNC4(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC5(mgpio->rmap, FUNC0(offset),
					  MAX77620_CNFG_GPIO_DRV_MASK,
					  MAX77620_CNFG_GPIO_DRV_OPENDRAIN);
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC5(mgpio->rmap, FUNC0(offset),
					  MAX77620_CNFG_GPIO_DRV_MASK,
					  MAX77620_CNFG_GPIO_DRV_PUSHPULL);
	case PIN_CONFIG_INPUT_DEBOUNCE:
		return FUNC2(mgpio, offset,
			FUNC3(config));
	default:
		break;
	}

	return -ENOTSUPP;
}