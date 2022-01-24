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
struct gpio_chip {int dummy; } ;
struct adp5520_gpio {int /*<<< orphan*/ * lut; int /*<<< orphan*/  master; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADP5520_GPIO_CFG_2 ; 
 int /*<<< orphan*/  ADP5520_GPIO_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adp5520_gpio* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
		unsigned off, int val)
{
	struct adp5520_gpio *dev;
	int ret = 0;
	dev = FUNC2(chip);

	FUNC3(off, &dev->output);

	if (val)
		ret |= FUNC1(dev->master, ADP5520_GPIO_OUT,
					dev->lut[off]);
	else
		ret |= FUNC0(dev->master, ADP5520_GPIO_OUT,
					dev->lut[off]);

	ret |= FUNC1(dev->master, ADP5520_GPIO_CFG_2,
					dev->lut[off]);

	return ret;
}