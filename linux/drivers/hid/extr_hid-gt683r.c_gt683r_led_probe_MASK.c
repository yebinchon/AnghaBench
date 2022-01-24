#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
struct gt683r_led {TYPE_1__* led_devs; struct hid_device* hdev; int /*<<< orphan*/  mode; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {char* name; int max_brightness; int /*<<< orphan*/  groups; int /*<<< orphan*/  brightness_set; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GT683R_LED_COUNT ; 
 int /*<<< orphan*/  GT683R_LED_NORMAL ; 
 int /*<<< orphan*/  HID_CONNECT_HIDRAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt683r_brightness_set ; 
 int /*<<< orphan*/  gt683r_led_groups ; 
 int /*<<< orphan*/  gt683r_led_work ; 
 char** gt683r_panel_names ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*) ; 
 int FUNC4 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int FUNC6 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*,struct gt683r_led*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char*,char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(struct hid_device *hdev,
			const struct hid_device_id *id)
{
	int i;
	int ret;
	int name_sz;
	char *name;
	struct gt683r_led *led;

	led = FUNC2(&hdev->dev, sizeof(*led), GFP_KERNEL);
	if (!led)
		return -ENOMEM;

	FUNC10(&led->lock);
	FUNC0(&led->work, gt683r_led_work);

	led->mode = GT683R_LED_NORMAL;
	led->hdev = hdev;
	FUNC7(hdev, led);

	ret = FUNC6(hdev);
	if (ret) {
		FUNC3(hdev, "hid parsing failed\n");
		return ret;
	}

	ret = FUNC4(hdev, HID_CONNECT_HIDRAW);
	if (ret) {
		FUNC3(hdev, "hw start failed\n");
		return ret;
	}

	for (i = 0; i < GT683R_LED_COUNT; i++) {
		name_sz = FUNC12(FUNC1(&hdev->dev)) +
				FUNC12(gt683r_panel_names[i]) + 3;

		name = FUNC2(&hdev->dev, name_sz, GFP_KERNEL);
		if (!name) {
			ret = -ENOMEM;
			goto fail;
		}

		FUNC11(name, name_sz, "%s::%s",
				FUNC1(&hdev->dev), gt683r_panel_names[i]);
		led->led_devs[i].name = name;
		led->led_devs[i].max_brightness = 1;
		led->led_devs[i].brightness_set = gt683r_brightness_set;
		led->led_devs[i].groups = gt683r_led_groups;

		ret = FUNC8(&hdev->dev, &led->led_devs[i]);
		if (ret) {
			FUNC3(hdev, "could not register led device\n");
			goto fail;
		}
	}

	return 0;

fail:
	for (i = i - 1; i >= 0; i--)
		FUNC9(&led->led_devs[i]);
	FUNC5(hdev);
	return ret;
}