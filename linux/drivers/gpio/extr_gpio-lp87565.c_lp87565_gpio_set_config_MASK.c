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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  LP87565_GOIO1_OD ; 
 int /*<<< orphan*/  LP87565_REG_GPIO_CONFIG ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct lp87565_gpio* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned int offset,
				   unsigned long config)
{
	struct lp87565_gpio *gpio = FUNC2(gc);

	switch (FUNC3(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC4(gpio->map,
					  LP87565_REG_GPIO_CONFIG,
					  FUNC0(offset +
					      FUNC1(LP87565_GOIO1_OD)),
					  FUNC0(offset +
					      FUNC1(LP87565_GOIO1_OD)));
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC4(gpio->map,
					  LP87565_REG_GPIO_CONFIG,
					  FUNC0(offset +
					      FUNC1(LP87565_GOIO1_OD)), 0);
	default:
		return -ENOTSUPP;
	}
}