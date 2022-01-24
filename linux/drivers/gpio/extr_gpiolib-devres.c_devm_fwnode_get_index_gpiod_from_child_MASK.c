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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  prop_name ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 unsigned int FUNC0 (char**) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct gpio_desc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  devm_gpiod_release ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct gpio_desc**) ; 
 struct gpio_desc** FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_desc**) ; 
 struct gpio_desc* FUNC7 (struct fwnode_handle*,char*,int,int,char const*) ; 
 char** gpio_suffixes ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,...) ; 

struct gpio_desc *FUNC9(struct device *dev,
						const char *con_id, int index,
						struct fwnode_handle *child,
						enum gpiod_flags flags,
						const char *label)
{
	char prop_name[32]; /* 32 is max size of property name */
	struct gpio_desc **dr;
	struct gpio_desc *desc;
	unsigned int i;

	dr = FUNC5(devm_gpiod_release, sizeof(struct gpio_desc *),
			  GFP_KERNEL);
	if (!dr)
		return FUNC1(-ENOMEM);

	for (i = 0; i < FUNC0(gpio_suffixes); i++) {
		if (con_id)
			FUNC8(prop_name, sizeof(prop_name), "%s-%s",
					    con_id, gpio_suffixes[i]);
		else
			FUNC8(prop_name, sizeof(prop_name), "%s",
					    gpio_suffixes[i]);

		desc = FUNC7(child, prop_name, index, flags,
					      label);
		if (!FUNC2(desc) || (FUNC3(desc) != -ENOENT))
			break;
	}
	if (FUNC2(desc)) {
		FUNC6(dr);
		return desc;
	}

	*dr = desc;
	FUNC4(dev, dr);

	return desc;
}