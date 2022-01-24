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
 int EINVAL ; 
 int /*<<< orphan*/  LP873X_CONFIG_CLKIN_PIN_SEL ; 
 int /*<<< orphan*/  LP873X_REG_CONFIG ; 
 struct lp873x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned int offset)
{
	struct lp873x_gpio *gpio = FUNC0(gc);
	int ret;

	switch (offset) {
	case 0:
		/* No MUX Set up Needed for GPO */
		break;
	case 1:
		/* Setup the CLKIN_PIN_SEL MUX to GPO2 */
		ret = FUNC1(gpio->lp873->regmap, LP873X_REG_CONFIG,
					 LP873X_CONFIG_CLKIN_PIN_SEL, 0);
		if (ret)
			return ret;

		break;
	default:
		return -EINVAL;
	}

	return 0;
}