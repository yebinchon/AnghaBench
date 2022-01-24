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
struct vprbrd_gpio {int gpiob_out; struct vprbrd* vb; } ;
struct vprbrd {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct vprbrd_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_chip*,unsigned int,int) ; 
 int FUNC5 (struct vprbrd*,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip,
			unsigned int offset, int value)
{
	int ret;
	struct vprbrd_gpio *gpio = FUNC1(chip);
	struct vprbrd *vb = gpio->vb;

	gpio->gpiob_out |= (1 << offset);

	FUNC2(&vb->lock);

	ret = FUNC5(vb, offset, 1);
	if (ret)
		FUNC0(chip->parent, "usb error setting pin to output\n");

	FUNC3(&vb->lock);

	FUNC4(chip, offset, value);

	return ret;
}