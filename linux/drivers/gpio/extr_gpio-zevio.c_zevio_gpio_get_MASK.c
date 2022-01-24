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
typedef  int u32 ;
struct zevio_gpio {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  ZEVIO_GPIO_DIRECTION ; 
 int /*<<< orphan*/  ZEVIO_GPIO_INPUT ; 
 int /*<<< orphan*/  ZEVIO_GPIO_OUTPUT ; 
 struct zevio_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct zevio_gpio*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned pin)
{
	struct zevio_gpio *controller = FUNC2(chip);
	u32 val, dir;

	FUNC3(&controller->lock);
	dir = FUNC5(controller, pin, ZEVIO_GPIO_DIRECTION);
	if (dir & FUNC0(FUNC1(pin)))
		val = FUNC5(controller, pin, ZEVIO_GPIO_INPUT);
	else
		val = FUNC5(controller, pin, ZEVIO_GPIO_OUTPUT);
	FUNC4(&controller->lock);

	return (val >> FUNC1(pin)) & 0x1;
}