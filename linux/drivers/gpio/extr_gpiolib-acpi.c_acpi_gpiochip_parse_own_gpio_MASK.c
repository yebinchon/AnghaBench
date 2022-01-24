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
typedef  scalar_t__ u32 ;
struct gpio_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_gpio_chip {struct gpio_chip* chip; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 struct gpio_desc* FUNC1 (int) ; 
 int GPIOD_IN ; 
 int GPIOD_OUT_HIGH ; 
 int GPIOD_OUT_LOW ; 
 unsigned long GPIO_ACTIVE_LOW ; 
 unsigned long GPIO_LOOKUP_FLAGS_DEFAULT ; 
 scalar_t__ FUNC2 (struct gpio_desc*) ; 
 scalar_t__ FUNC3 (struct fwnode_handle*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwnode_handle*,char*,char const**) ; 
 int FUNC5 (struct fwnode_handle*,char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC6 (struct gpio_chip*,scalar_t__) ; 

__attribute__((used)) static struct gpio_desc *
FUNC7(struct acpi_gpio_chip *achip,
			     struct fwnode_handle *fwnode,
			     const char **name,
			     unsigned long *lflags,
			     enum gpiod_flags *dflags)
{
	struct gpio_chip *chip = achip->chip;
	struct gpio_desc *desc;
	u32 gpios[2];
	int ret;

	*lflags = GPIO_LOOKUP_FLAGS_DEFAULT;
	*dflags = 0;
	*name = NULL;

	ret = FUNC5(fwnode, "gpios", gpios,
					     FUNC0(gpios));
	if (ret < 0)
		return FUNC1(ret);

	desc = FUNC6(chip, gpios[0]);
	if (FUNC2(desc))
		return desc;

	if (gpios[1])
		*lflags |= GPIO_ACTIVE_LOW;

	if (FUNC3(fwnode, "input"))
		*dflags |= GPIOD_IN;
	else if (FUNC3(fwnode, "output-low"))
		*dflags |= GPIOD_OUT_LOW;
	else if (FUNC3(fwnode, "output-high"))
		*dflags |= GPIOD_OUT_HIGH;
	else
		return FUNC1(-EINVAL);

	FUNC4(fwnode, "line-name", name);

	return desc;
}