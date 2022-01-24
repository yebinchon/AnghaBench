#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lenovo_drvdata_cptkbd {int fn_lock; int sensitivity; scalar_t__ middlebutton_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct hid_device {scalar_t__ product; scalar_t__ type; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HID_TYPE_USBMOUSE ; 
 scalar_t__ USB_DEVICE_ID_LENOVO_CUSBKBD ; 
 struct lenovo_drvdata_cptkbd* FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct lenovo_drvdata_cptkbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  lenovo_attr_group_cptkbd ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int FUNC6 (struct hid_device*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev)
{
	int ret;
	struct lenovo_drvdata_cptkbd *cptkbd_data;

	/* All the custom action happens on the USBMOUSE device for USB */
	if (hdev->product == USB_DEVICE_ID_LENOVO_CUSBKBD
			&& hdev->type != HID_TYPE_USBMOUSE) {
		FUNC1(hdev, "Ignoring keyboard half of device\n");
		return 0;
	}

	cptkbd_data = FUNC0(&hdev->dev,
					sizeof(*cptkbd_data),
					GFP_KERNEL);
	if (cptkbd_data == NULL) {
		FUNC2(hdev, "can't alloc keyboard descriptor\n");
		return -ENOMEM;
	}
	FUNC3(hdev, cptkbd_data);

	/*
	 * Tell the keyboard a driver understands it, and turn F7, F9, F11 into
	 * regular keys
	 */
	ret = FUNC6(hdev, 0x01, 0x03);
	if (ret)
		FUNC4(hdev, "Failed to switch F7/9/11 mode: %d\n", ret);

	/* Switch middle button to native mode */
	ret = FUNC6(hdev, 0x09, 0x01);
	if (ret)
		FUNC4(hdev, "Failed to switch middle button: %d\n", ret);

	/* Set keyboard settings to known state */
	cptkbd_data->middlebutton_state = 0;
	cptkbd_data->fn_lock = true;
	cptkbd_data->sensitivity = 0x05;
	FUNC5(hdev);

	ret = FUNC7(&hdev->dev.kobj, &lenovo_attr_group_cptkbd);
	if (ret)
		FUNC4(hdev, "Could not create sysfs group: %d\n", ret);

	return 0;
}