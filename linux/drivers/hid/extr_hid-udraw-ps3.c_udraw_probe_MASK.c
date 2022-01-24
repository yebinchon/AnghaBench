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
struct udraw {int last_two_finger_x; int last_two_finger_y; int /*<<< orphan*/  accel_input_dev; int /*<<< orphan*/  pen_input_dev; int /*<<< orphan*/  touch_input_dev; int /*<<< orphan*/  joy_input_dev; struct hid_device* hdev; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HID_CONNECT_DRIVER ; 
 int HID_CONNECT_HIDRAW ; 
 struct udraw* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int FUNC2 (struct hid_device*,int) ; 
 int FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,struct udraw*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct udraw*,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct udraw*,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct udraw*,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct udraw*,struct hid_device*) ; 

__attribute__((used)) static int FUNC10(struct hid_device *hdev, const struct hid_device_id *id)
{
	struct udraw *udraw;
	int ret;

	udraw = FUNC0(&hdev->dev, sizeof(struct udraw), GFP_KERNEL);
	if (!udraw)
		return -ENOMEM;

	udraw->hdev = hdev;
	udraw->last_two_finger_x = -1;
	udraw->last_two_finger_y = -1;

	FUNC4(hdev, udraw);

	ret = FUNC3(hdev);
	if (ret) {
		FUNC1(hdev, "parse failed\n");
		return ret;
	}

	if (!FUNC7(udraw, hdev) ||
	    !FUNC9(udraw, hdev) ||
	    !FUNC8(udraw, hdev) ||
	    !FUNC6(udraw, hdev)) {
		FUNC1(hdev, "could not allocate interfaces\n");
		return -ENOMEM;
	}

	ret = FUNC5(udraw->joy_input_dev) ||
		FUNC5(udraw->touch_input_dev) ||
		FUNC5(udraw->pen_input_dev) ||
		FUNC5(udraw->accel_input_dev);
	if (ret) {
		FUNC1(hdev, "failed to register interfaces\n");
		return ret;
	}

	ret = FUNC2(hdev, HID_CONNECT_HIDRAW | HID_CONNECT_DRIVER);
	if (ret) {
		FUNC1(hdev, "hw start failed\n");
		return ret;
	}

	return 0;
}