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
struct lp87565_gpio {int /*<<< orphan*/  map; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  LP87565_REG_PIN_FUNCTION ; 
 struct lp87565_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int offset)
{
	struct lp87565_gpio *gpio = FUNC1(gc);
	int ret;

	switch (offset) {
	case 0:
	case 1:
	case 2:
		/*
		 * MUX can program the pin to be in EN1/2/3 pin mode
		 * Or GPIO1/2/3 mode.
		 * Setup the GPIO*_SEL MUX to GPIO mode
		 */
		ret = FUNC2(gpio->map,
					 LP87565_REG_PIN_FUNCTION,
					 FUNC0(offset), FUNC0(offset));
		if (ret)
			return ret;

		break;
	default:
		return -EINVAL;
	}

	return 0;
}