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
 int /*<<< orphan*/  DA9055_REG_GPIO_MODE0_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct da9055_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *gc, unsigned offset, int value)
{
	struct da9055_gpio *gpio = FUNC1(gc);

	FUNC0(gpio->da9055,
			DA9055_REG_GPIO_MODE0_2,
			1 << offset,
			value << offset);
}