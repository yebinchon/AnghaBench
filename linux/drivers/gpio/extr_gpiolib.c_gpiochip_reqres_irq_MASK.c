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
struct gpio_chip {TYPE_1__* gpiodev; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,char*,unsigned int) ; 
 int FUNC1 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct gpio_chip *chip, unsigned int offset)
{
	int ret;

	if (!FUNC3(chip->gpiodev->owner))
		return -ENODEV;

	ret = FUNC1(chip, offset);
	if (ret) {
		FUNC0(chip, "unable to lock HW IRQ %u for IRQ\n", offset);
		FUNC2(chip->gpiodev->owner);
		return ret;
	}
	return 0;
}