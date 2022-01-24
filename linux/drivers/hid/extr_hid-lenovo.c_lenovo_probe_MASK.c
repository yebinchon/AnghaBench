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
struct hid_device {int product; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
#define  USB_DEVICE_ID_LENOVO_CBTKBD 130 
#define  USB_DEVICE_ID_LENOVO_CUSBKBD 129 
#define  USB_DEVICE_ID_LENOVO_TPKBD 128 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int FUNC3 (struct hid_device*) ; 
 int FUNC4 (struct hid_device*) ; 
 int FUNC5 (struct hid_device*) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev,
		const struct hid_device_id *id)
{
	int ret;

	ret = FUNC3(hdev);
	if (ret) {
		FUNC0(hdev, "hid_parse failed\n");
		goto err;
	}

	ret = FUNC1(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC0(hdev, "hid_hw_start failed\n");
		goto err;
	}

	switch (hdev->product) {
	case USB_DEVICE_ID_LENOVO_TPKBD:
		ret = FUNC5(hdev);
		break;
	case USB_DEVICE_ID_LENOVO_CUSBKBD:
	case USB_DEVICE_ID_LENOVO_CBTKBD:
		ret = FUNC4(hdev);
		break;
	default:
		ret = 0;
		break;
	}
	if (ret)
		goto err_hid;

	return 0;
err_hid:
	FUNC2(hdev);
err:
	return ret;
}