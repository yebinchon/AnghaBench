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
typedef  int /*<<< orphan*/  u32 ;
struct zevio_gpio {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  ZEVIO_GPIO_DIRECTION ; 
 struct zevio_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct zevio_gpio*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zevio_gpio*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned pin)
{
	struct zevio_gpio *controller = FUNC2(chip);
	u32 val;

	FUNC3(&controller->lock);

	val = FUNC5(controller, pin, ZEVIO_GPIO_DIRECTION);
	val |= FUNC0(FUNC1(pin));
	FUNC6(controller, pin, ZEVIO_GPIO_DIRECTION, val);

	FUNC4(&controller->lock);

	return 0;
}