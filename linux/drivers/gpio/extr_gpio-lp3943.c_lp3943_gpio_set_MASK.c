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
typedef  int /*<<< orphan*/  u8 ;
struct lp3943_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP3943_GPIO_OUT_HIGH ; 
 int /*<<< orphan*/  LP3943_GPIO_OUT_LOW ; 
 struct lp3943_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct lp3943_gpio*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned offset, int value)
{
	struct lp3943_gpio *lp3943_gpio = FUNC0(chip);
	u8 data;

	if (value)
		data = LP3943_GPIO_OUT_HIGH;
	else
		data = LP3943_GPIO_OUT_LOW;

	FUNC1(lp3943_gpio, offset, data);
}