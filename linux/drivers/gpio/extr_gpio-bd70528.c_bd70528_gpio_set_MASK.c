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
typedef  int /*<<< orphan*/  u8 ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct bd70528_gpio {TYPE_1__ chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD70528_GPIO_OUT_HI ; 
 int /*<<< orphan*/  BD70528_GPIO_OUT_LO ; 
 int /*<<< orphan*/  BD70528_GPIO_OUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct bd70528_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned int offset,
			     int value)
{
	int ret;
	struct bd70528_gpio *bdgpio = FUNC2(chip);
	u8 val = (value) ? BD70528_GPIO_OUT_HI : BD70528_GPIO_OUT_LO;

	ret = FUNC3(bdgpio->chip.regmap, FUNC0(offset),
				 BD70528_GPIO_OUT_MASK, val);
	if (ret)
		FUNC1(bdgpio->chip.dev, "Could not set gpio to %d\n", value);
}