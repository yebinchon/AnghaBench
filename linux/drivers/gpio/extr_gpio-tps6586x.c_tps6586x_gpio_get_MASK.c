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
typedef  int uint8_t ;
struct tps6586x_gpio {int /*<<< orphan*/  parent; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPS6586X_GPIOSET2 ; 
 struct tps6586x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct tps6586x_gpio *tps6586x_gpio = FUNC0(gc);
	uint8_t val;
	int ret;

	ret = FUNC1(tps6586x_gpio->parent, TPS6586X_GPIOSET2, &val);
	if (ret)
		return ret;

	return !!(val & (1 << offset));
}