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
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ TC3589x_GPIODATA0 ; 
 struct tc3589x_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct tc3589x*,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned int offset, int val)
{
	struct tc3589x_gpio *tc3589x_gpio = FUNC2(chip);
	struct tc3589x *tc3589x = tc3589x_gpio->tc3589x;
	u8 reg = TC3589x_GPIODATA0 + (offset / 8) * 2;
	unsigned int pos = offset % 8;
	u8 data[] = {val ? FUNC1(pos) : 0, FUNC1(pos)};

	FUNC3(tc3589x, reg, FUNC0(data), data);
}