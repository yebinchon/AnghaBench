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
struct led_properties {scalar_t__ color; int color_present; scalar_t__ func_enum; int func_enum_present; int /*<<< orphan*/  function; int /*<<< orphan*/  label; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ LED_COLOR_ID_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 scalar_t__ FUNC1 (struct fwnode_handle*,char*) ; 
 int FUNC2 (struct fwnode_handle*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fwnode_handle*,char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(struct device *dev,
				   struct fwnode_handle *fwnode,
				   struct led_properties *props)
{
	int ret;

	if (!fwnode)
		return;

	if (FUNC1(fwnode, "label")) {
		ret = FUNC2(fwnode, "label", &props->label);
		if (ret)
			FUNC0(dev, "Error parsing 'label' property (%d)\n", ret);
		return;
	}

	if (FUNC1(fwnode, "color")) {
		ret = FUNC3(fwnode, "color", &props->color);
		if (ret)
			FUNC0(dev, "Error parsing 'color' property (%d)\n", ret);
		else if (props->color >= LED_COLOR_ID_MAX)
			FUNC0(dev, "LED color identifier out of range\n");
		else
			props->color_present = true;
	}


	if (!FUNC1(fwnode, "function"))
		return;

	ret = FUNC2(fwnode, "function", &props->function);
	if (ret) {
		FUNC0(dev,
			"Error parsing 'function' property (%d)\n",
			ret);
	}

	if (!FUNC1(fwnode, "function-enumerator"))
		return;

	ret = FUNC3(fwnode, "function-enumerator",
				       &props->func_enum);
	if (ret) {
		FUNC0(dev,
			"Error parsing 'function-enumerator' property (%d)\n",
			ret);
	} else {
		props->func_enum_present = true;
	}
}