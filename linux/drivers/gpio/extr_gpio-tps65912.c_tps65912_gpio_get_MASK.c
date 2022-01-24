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
struct tps65912_gpio {TYPE_1__* tps; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int GPIO_STS_MASK ; 
 unsigned int TPS65912_GPIO1 ; 
 struct tps65912_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct tps65912_gpio *gpio = FUNC0(gc);
	int ret, val;

	ret = FUNC1(gpio->tps->regmap, TPS65912_GPIO1 + offset, &val);
	if (ret)
		return ret;

	if (val & GPIO_STS_MASK)
		return 1;

	return 0;
}