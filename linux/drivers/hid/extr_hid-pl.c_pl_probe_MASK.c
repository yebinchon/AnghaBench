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
struct hid_device_id {scalar_t__ driver_data; } ;
struct hid_device {int /*<<< orphan*/  quirks; } ;

/* Variables and functions */
 int HID_CONNECT_DEFAULT ; 
 int HID_CONNECT_FF ; 
 int /*<<< orphan*/  HID_QUIRK_MULTI_INPUT ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,int) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;

	if (id->driver_data)
		hdev->quirks |= HID_QUIRK_MULTI_INPUT;

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(hdev, "parse failed\n");
		goto err;
	}

	ret = FUNC1(hdev, HID_CONNECT_DEFAULT & ~HID_CONNECT_FF);
	if (ret) {
		FUNC0(hdev, "hw start failed\n");
		goto err;
	}

	FUNC3(hdev);

	return 0;
err:
	return ret;
}