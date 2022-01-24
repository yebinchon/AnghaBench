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
struct gpio_desc {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_gpio_info {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 struct gpio_desc* FUNC0 (int) ; 
 unsigned long GPIO_LOOKUP_FLAGS_DEFAULT ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct acpi_gpio_info*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,struct acpi_gpio_info*) ; 
 struct gpio_desc* FUNC4 (struct fwnode_handle*,char const*,int,struct acpi_gpio_info*) ; 
 int FUNC5 (struct gpio_desc*,char const*,unsigned long,int) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ ,char const*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_desc*) ; 
 int FUNC8 (struct gpio_desc*,char const*) ; 
 scalar_t__ FUNC9 (struct fwnode_handle*) ; 
 scalar_t__ FUNC10 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct fwnode_handle*) ; 

struct gpio_desc *FUNC12(struct fwnode_handle *fwnode,
					 const char *propname, int index,
					 enum gpiod_flags dflags,
					 const char *label)
{
	unsigned long lflags = GPIO_LOOKUP_FLAGS_DEFAULT;
	struct gpio_desc *desc = FUNC0(-ENODEV);
	int ret;

	if (!fwnode)
		return FUNC0(-EINVAL);

	if (FUNC10(fwnode)) {
		desc = FUNC6(FUNC11(fwnode),
					      propname, index,
					      dflags,
					      label);
		return desc;
	} else if (FUNC9(fwnode)) {
		struct acpi_gpio_info info;

		desc = FUNC4(fwnode, propname, index, &info);
		if (FUNC1(desc))
			return desc;

		FUNC2(&dflags, &info);
		FUNC3(&lflags, &info);
	}

	/* Currently only ACPI takes this path */
	ret = FUNC8(desc, label);
	if (ret)
		return FUNC0(ret);

	ret = FUNC5(desc, propname, lflags, dflags);
	if (ret < 0) {
		FUNC7(desc);
		return FUNC0(ret);
	}

	return desc;
}