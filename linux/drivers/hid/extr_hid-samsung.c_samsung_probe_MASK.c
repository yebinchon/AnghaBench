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
struct hid_device {scalar_t__ product; int rsize; } ;

/* Variables and functions */
 unsigned int HID_CONNECT_DEFAULT ; 
 unsigned int HID_CONNECT_HIDDEV_FORCE ; 
 unsigned int HID_CONNECT_HIDINPUT ; 
 scalar_t__ USB_DEVICE_ID_SAMSUNG_IR_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,unsigned int) ; 
 int FUNC2 (struct hid_device*) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev,
		const struct hid_device_id *id)
{
	int ret;
	unsigned int cmask = HID_CONNECT_DEFAULT;

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(hdev, "parse failed\n");
		goto err_free;
	}

	if (USB_DEVICE_ID_SAMSUNG_IR_REMOTE == hdev->product) {
		if (hdev->rsize == 184) {
			/* disable hidinput, force hiddev */
			cmask = (cmask & ~HID_CONNECT_HIDINPUT) |
				HID_CONNECT_HIDDEV_FORCE;
		}
	}

	ret = FUNC1(hdev, cmask);
	if (ret) {
		FUNC0(hdev, "hw start failed\n");
		goto err_free;
	}

	return 0;
err_free:
	return ret;
}