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
struct lp873x_gpio {TYPE_1__* lp873; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int BITS_PER_GPO ; 
 int ENOTSUPP ; 
 unsigned int LP873X_GPO_CTRL_OD ; 
 int /*<<< orphan*/  LP873X_REG_GPO_CTRL ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 struct lp873x_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned offset,
				  unsigned long config)
{
	struct lp873x_gpio *gpio = FUNC1(gc);

	switch (FUNC2(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC3(gpio->lp873->regmap,
					  LP873X_REG_GPO_CTRL,
					  FUNC0(offset * BITS_PER_GPO +
					  LP873X_GPO_CTRL_OD),
					  FUNC0(offset * BITS_PER_GPO +
					  LP873X_GPO_CTRL_OD));

	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC3(gpio->lp873->regmap,
					  LP873X_REG_GPO_CTRL,
					  FUNC0(offset * BITS_PER_GPO +
					  LP873X_GPO_CTRL_OD), 0);
	default:
		return -ENOTSUPP;
	}
}