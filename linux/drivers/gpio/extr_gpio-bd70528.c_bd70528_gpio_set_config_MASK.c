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
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_GPIO_DRIVE_MASK ; 
 int /*<<< orphan*/  BD70528_GPIO_OPEN_DRAIN ; 
 int /*<<< orphan*/  BD70528_GPIO_PUSH_PULL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 int FUNC1 (struct bd70528_gpio*,unsigned int,int /*<<< orphan*/ ) ; 
 struct bd70528_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned int offset,
				   unsigned long config)
{
	struct bd70528_gpio *bdgpio = FUNC2(chip);

	switch (FUNC4(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC5(bdgpio->chip.regmap,
					  FUNC0(offset),
					  BD70528_GPIO_DRIVE_MASK,
					  BD70528_GPIO_OPEN_DRAIN);
		break;
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC5(bdgpio->chip.regmap,
					  FUNC0(offset),
					  BD70528_GPIO_DRIVE_MASK,
					  BD70528_GPIO_PUSH_PULL);
		break;
	case PIN_CONFIG_INPUT_DEBOUNCE:
		return FUNC1(bdgpio, offset,
					    FUNC3(config));
		break;
	default:
		break;
	}
	return -ENOTSUPP;
}