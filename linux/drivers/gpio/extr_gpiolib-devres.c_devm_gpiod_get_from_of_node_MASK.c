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
struct devres {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct gpio_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  devm_gpiod_match ; 
 int /*<<< orphan*/  devm_gpiod_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct gpio_desc**) ; 
 struct gpio_desc** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct devres* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gpio_desc**) ; 
 struct gpio_desc* FUNC5 (struct device_node*,char const*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct gpio_desc*) ; 

struct gpio_desc *FUNC7(struct device *dev,
					      struct device_node *node,
					      const char *propname, int index,
					      enum gpiod_flags dflags,
					      const char *label)
{
	struct gpio_desc **dr;
	struct gpio_desc *desc;

	desc = FUNC5(node, propname, index, dflags, label);
	if (FUNC1(desc))
		return desc;

	/*
	 * For non-exclusive GPIO descriptors, check if this descriptor is
	 * already under resource management by this device.
	 */
	if (dflags & GPIOD_FLAGS_BIT_NONEXCLUSIVE) {
		struct devres *dres;

		dres = FUNC4(dev, devm_gpiod_release,
				   devm_gpiod_match, &desc);
		if (dres)
			return desc;
	}

	dr = FUNC3(devm_gpiod_release, sizeof(struct gpio_desc *),
			  GFP_KERNEL);
	if (!dr) {
		FUNC6(desc);
		return FUNC0(-ENOMEM);
	}

	*dr = desc;
	FUNC2(dev, dr);

	return desc;
}