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
struct wcove_gpio {int /*<<< orphan*/  regmap; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLO_DRV_CMOS ; 
 int /*<<< orphan*/  CTLO_DRV_MASK ; 
 int /*<<< orphan*/  CTLO_DRV_OD ; 
 int /*<<< orphan*/  CTRL_OUT ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 struct wcove_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int gpio,
				 unsigned long config)
{
	struct wcove_gpio *wg = FUNC0(chip);
	int reg = FUNC3(gpio, CTRL_OUT);

	if (reg < 0)
		return 0;

	switch (FUNC1(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC2(wg->regmap, reg, CTLO_DRV_MASK,
					  CTLO_DRV_OD);
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC2(wg->regmap, reg, CTLO_DRV_MASK,
					  CTLO_DRV_CMOS);
	default:
		break;
	}

	return -ENOTSUPP;
}