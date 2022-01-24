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
struct led_classdev {int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; } ;
struct is31fl319x_led {scalar_t__ max_microamp; struct led_classdev cdev; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IS31FL319X_CURRENT_DEFAULT ; 
 int /*<<< orphan*/  IS31FL319X_CURRENT_MAX ; 
 scalar_t__ IS31FL319X_CURRENT_MIN ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node const*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node const*,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(const struct device *dev,
				     const struct device_node *child,
				     struct is31fl319x_led *led)
{
	struct led_classdev *cdev = &led->cdev;
	int ret;

	if (FUNC1(child, "label", &cdev->name))
		cdev->name = child->name;

	ret = FUNC1(child, "linux,default-trigger",
				      &cdev->default_trigger);
	if (ret < 0 && ret != -EINVAL) /* is optional */
		return ret;

	led->max_microamp = IS31FL319X_CURRENT_DEFAULT;
	ret = FUNC2(child, "led-max-microamp",
				   &led->max_microamp);
	if (!ret) {
		if (led->max_microamp < IS31FL319X_CURRENT_MIN)
			return -EINVAL;	/* not supported */
		led->max_microamp = FUNC0(led->max_microamp,
					  IS31FL319X_CURRENT_MAX);
	}

	return 0;
}