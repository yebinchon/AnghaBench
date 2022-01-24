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
struct hid_device_id {int dummy; } ;
struct hid_device {int product; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_FF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*) ; 
 int FUNC4 (struct hid_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int FUNC6 (struct hid_device*) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;

	FUNC0(&hdev->dev, "DragonRise Inc. HID hardware probe...");

	ret = FUNC6(hdev);
	if (ret) {
		FUNC3(hdev, "parse failed\n");
		goto err;
	}

	ret = FUNC4(hdev, HID_CONNECT_DEFAULT & ~HID_CONNECT_FF);
	if (ret) {
		FUNC3(hdev, "hw start failed\n");
		goto err;
	}

	switch (hdev->product) {
	case 0x0006:
		ret = FUNC2(hdev);
		if (ret) {
			FUNC1(&hdev->dev, "force feedback init failed\n");
			FUNC5(hdev);
			goto err;
		}
		break;
	}

	return 0;
err:
	return ret;
}