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
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_gpio_chip_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct gpio_chip**) ; 
 struct gpio_chip** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip**) ; 
 int FUNC3 (struct gpio_chip*,void*) ; 

int FUNC4(struct device *dev, struct gpio_chip *chip,
			   void *data)
{
	struct gpio_chip **ptr;
	int ret;

	ptr = FUNC1(devm_gpio_chip_release, sizeof(*ptr),
			     GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC3(chip, data);
	if (ret < 0) {
		FUNC2(ptr);
		return ret;
	}

	*ptr = chip;
	FUNC0(dev, ptr);

	return 0;
}