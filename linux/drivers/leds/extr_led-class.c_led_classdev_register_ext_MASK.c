#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct led_init_data {scalar_t__ fwnode; int /*<<< orphan*/  devicename; scalar_t__ devname_mandatory; } ;
struct led_classdev {char* name; int flags; int brightness_hw_changed; int /*<<< orphan*/  led_access; scalar_t__ max_brightness; int /*<<< orphan*/  node; int /*<<< orphan*/  trigger_lock; scalar_t__ work_flags; TYPE_1__* dev; int /*<<< orphan*/  groups; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  final_name ;
struct TYPE_6__ {scalar_t__ fwnode; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int LED_BRIGHT_HW_CHANGED ; 
 scalar_t__ LED_FULL ; 
 int LED_MAX_NAME_SIZE ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,struct led_classdev*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct led_classdev*) ; 
 int FUNC11 (char const*,char*,int) ; 
 int FUNC12 (struct device*,struct led_init_data*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC14 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC15 (struct led_classdev*) ; 
 int /*<<< orphan*/  leds_class ; 
 int /*<<< orphan*/  leds_list ; 
 int /*<<< orphan*/  leds_list_lock ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct device *parent,
			      struct led_classdev *led_cdev,
			      struct led_init_data *init_data)
{
	char composed_name[LED_MAX_NAME_SIZE];
	char final_name[LED_MAX_NAME_SIZE];
	const char *proposed_name = composed_name;
	int ret;

	if (init_data) {
		if (init_data->devname_mandatory && !init_data->devicename) {
			FUNC3(parent, "Mandatory device name is missing");
			return -EINVAL;
		}
		ret = FUNC12(parent, init_data, composed_name);
		if (ret < 0)
			return ret;
	} else {
		proposed_name = led_cdev->name;
	}

	ret = FUNC11(proposed_name, final_name, sizeof(final_name));
	if (ret < 0)
		return ret;

	FUNC17(&led_cdev->led_access);
	FUNC18(&led_cdev->led_access);
	led_cdev->dev = FUNC6(leds_class, parent, 0,
				led_cdev, led_cdev->groups, "%s", final_name);
	if (FUNC0(led_cdev->dev)) {
		FUNC19(&led_cdev->led_access);
		return FUNC1(led_cdev->dev);
	}
	if (init_data && init_data->fwnode)
		led_cdev->dev->fwnode = init_data->fwnode;

	if (ret)
		FUNC5(parent, "Led %s renamed to %s due to name collision",
				led_cdev->name, FUNC4(led_cdev->dev));

	if (led_cdev->flags & LED_BRIGHT_HW_CHANGED) {
		ret = FUNC10(led_cdev);
		if (ret) {
			FUNC7(led_cdev->dev);
			led_cdev->dev = NULL;
			FUNC19(&led_cdev->led_access);
			return ret;
		}
	}

	led_cdev->work_flags = 0;
#ifdef CONFIG_LEDS_TRIGGERS
	init_rwsem(&led_cdev->trigger_lock);
#endif
#ifdef CONFIG_LEDS_BRIGHTNESS_HW_CHANGED
	led_cdev->brightness_hw_changed = -1;
#endif
	/* add to the list of leds */
	FUNC8(&leds_list_lock);
	FUNC16(&led_cdev->node, &leds_list);
	FUNC20(&leds_list_lock);

	if (!led_cdev->max_brightness)
		led_cdev->max_brightness = LED_FULL;

	FUNC15(led_cdev);

	FUNC13(led_cdev);

#ifdef CONFIG_LEDS_TRIGGERS
	led_trigger_set_default(led_cdev);
#endif

	FUNC19(&led_cdev->led_access);

	FUNC2(parent, "Registered led device: %s\n",
			led_cdev->name);

	return 0;
}