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
typedef  scalar_t__ u8 ;
struct tc3589x_gpio {struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_OPEN_SOURCE 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 scalar_t__ TC3589x_GPIOODE0 ; 
 scalar_t__ TC3589x_GPIOODM0 ; 
 struct tc3589x_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (struct tc3589x*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset,
				   unsigned long config)
{
	struct tc3589x_gpio *tc3589x_gpio = FUNC1(chip);
	struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
	/*
	 * These registers are alterated at each second address
	 * ODM bit 0 = drive to GND or Hi-Z (open drain)
	 * ODM bit 1 = drive to VDD or Hi-Z (open source)
	 */
	u8 odmreg = TC3589x_GPIOODM0 + (offset / 8) * 2;
	u8 odereg = TC3589x_GPIOODE0 + (offset / 8) * 2;
	unsigned int pos = offset % 8;
	int ret;

	switch (FUNC2(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		/* Set open drain mode */
		ret = FUNC3(tc3589x, odmreg, FUNC0(pos), 0);
		if (ret)
			return ret;
		/* Enable open drain/source mode */
		return FUNC3(tc3589x, odereg, FUNC0(pos), FUNC0(pos));
	case PIN_CONFIG_DRIVE_OPEN_SOURCE:
		/* Set open source mode */
		ret = FUNC3(tc3589x, odmreg, FUNC0(pos), FUNC0(pos));
		if (ret)
			return ret;
		/* Enable open drain/source mode */
		return FUNC3(tc3589x, odereg, FUNC0(pos), FUNC0(pos));
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		/* Disable open drain/source mode */
		return FUNC3(tc3589x, odereg, FUNC0(pos), 0);
	default:
		break;
	}
	return -ENOTSUPP;
}