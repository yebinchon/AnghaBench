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
 int FUNC0 (unsigned int) ; 
 scalar_t__ TC3589x_GPIODIR0 ; 
 struct tc3589x_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct tc3589x*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
				      unsigned int offset)
{
	struct tc3589x_gpio *tc3589x_gpio = FUNC1(chip);
	struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
	u8 reg = TC3589x_GPIODIR0 + offset / 8;
	unsigned int pos = offset % 8;
	int ret;

	ret = FUNC2(tc3589x, reg);
	if (ret < 0)
		return ret;

	return !(ret & FUNC0(pos));
}