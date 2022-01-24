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
struct TYPE_3__ {char* name; struct device* dev; void* brightness_set; void* brightness_get; } ;
struct lenovo_drvdata_tpkbd {int sensitivity; int press_speed; TYPE_1__ led_mute; TYPE_1__ led_micmute; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct hid_device {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_OUTPUT_REPORT ; 
 char* FUNC0 (struct device*) ; 
 void* FUNC1 (struct device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct lenovo_drvdata_tpkbd*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_device*,char*,int) ; 
 int FUNC7 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  lenovo_attr_group_tpkbd ; 
 int /*<<< orphan*/  FUNC9 (struct hid_device*) ; 
 void* lenovo_led_brightness_get_tpkbd ; 
 void* lenovo_led_brightness_set_tpkbd ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,char*,char*) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hid_device *hdev)
{
	struct device *dev = &hdev->dev;
	struct lenovo_drvdata_tpkbd *data_pointer;
	size_t name_sz = FUNC11(FUNC0(dev)) + 16;
	char *name_mute, *name_micmute;
	int i;
	int ret;

	/*
	 * Only register extra settings against subdevice where input_mapping
	 * set drvdata to 1, i.e. the trackpoint.
	 */
	if (!FUNC3(hdev))
		return 0;

	FUNC4(hdev, NULL);

	/* Validate required reports. */
	for (i = 0; i < 4; i++) {
		if (!FUNC5(hdev, HID_FEATURE_REPORT, 4, i, 1))
			return -ENODEV;
	}
	if (!FUNC5(hdev, HID_OUTPUT_REPORT, 3, 0, 2))
		return -ENODEV;

	ret = FUNC12(&hdev->dev.kobj, &lenovo_attr_group_tpkbd);
	if (ret)
		FUNC6(hdev, "Could not create sysfs group: %d\n", ret);

	data_pointer = FUNC1(&hdev->dev,
				    sizeof(struct lenovo_drvdata_tpkbd),
				    GFP_KERNEL);
	if (data_pointer == NULL) {
		FUNC2(hdev, "Could not allocate memory for driver data\n");
		ret = -ENOMEM;
		goto err;
	}

	// set same default values as windows driver
	data_pointer->sensitivity = 0xa0;
	data_pointer->press_speed = 0x38;

	name_mute = FUNC1(&hdev->dev, name_sz, GFP_KERNEL);
	name_micmute = FUNC1(&hdev->dev, name_sz, GFP_KERNEL);
	if (name_mute == NULL || name_micmute == NULL) {
		FUNC2(hdev, "Could not allocate memory for led data\n");
		ret = -ENOMEM;
		goto err;
	}
	FUNC10(name_mute, name_sz, "%s:amber:mute", FUNC0(dev));
	FUNC10(name_micmute, name_sz, "%s:amber:micmute", FUNC0(dev));

	FUNC4(hdev, data_pointer);

	data_pointer->led_mute.name = name_mute;
	data_pointer->led_mute.brightness_get = lenovo_led_brightness_get_tpkbd;
	data_pointer->led_mute.brightness_set = lenovo_led_brightness_set_tpkbd;
	data_pointer->led_mute.dev = dev;
	ret = FUNC7(dev, &data_pointer->led_mute);
	if (ret < 0)
		goto err;

	data_pointer->led_micmute.name = name_micmute;
	data_pointer->led_micmute.brightness_get =
		lenovo_led_brightness_get_tpkbd;
	data_pointer->led_micmute.brightness_set =
		lenovo_led_brightness_set_tpkbd;
	data_pointer->led_micmute.dev = dev;
	ret = FUNC7(dev, &data_pointer->led_micmute);
	if (ret < 0) {
		FUNC8(&data_pointer->led_mute);
		goto err;
	}

	FUNC9(hdev);

	return 0;
err:
	FUNC13(&hdev->dev.kobj, &lenovo_attr_group_tpkbd);
	return ret;
}