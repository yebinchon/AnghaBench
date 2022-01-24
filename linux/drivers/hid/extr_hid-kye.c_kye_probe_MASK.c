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
struct hid_device_id {int product; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
#define  USB_DEVICE_ID_GENIUS_MANTICORE 134 
#define  USB_DEVICE_ID_KYE_EASYPEN_I405X 133 
#define  USB_DEVICE_ID_KYE_EASYPEN_M406XE 132 
#define  USB_DEVICE_ID_KYE_EASYPEN_M610X 131 
#define  USB_DEVICE_ID_KYE_MOUSEPEN_I608X 130 
#define  USB_DEVICE_ID_KYE_MOUSEPEN_I608X_V2 129 
#define  USB_DEVICE_ID_KYE_PENSKETCH_M912 128 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 
 int FUNC3 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int FUNC5 (struct hid_device*) ; 
 int FUNC6 (struct hid_device*) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;

	ret = FUNC5(hdev);
	if (ret) {
		FUNC0(hdev, "parse failed\n");
		goto err;
	}

	ret = FUNC3(hdev, HID_CONNECT_DEFAULT);
	if (ret) {
		FUNC0(hdev, "hw start failed\n");
		goto err;
	}

	switch (id->product) {
	case USB_DEVICE_ID_KYE_EASYPEN_I405X:
	case USB_DEVICE_ID_KYE_MOUSEPEN_I608X:
	case USB_DEVICE_ID_KYE_MOUSEPEN_I608X_V2:
	case USB_DEVICE_ID_KYE_EASYPEN_M610X:
	case USB_DEVICE_ID_KYE_EASYPEN_M406XE:
	case USB_DEVICE_ID_KYE_PENSKETCH_M912:
		ret = FUNC6(hdev);
		if (ret) {
			FUNC0(hdev, "tablet enabling failed\n");
			goto enabling_err;
		}
		break;
	case USB_DEVICE_ID_GENIUS_MANTICORE:
		/*
		 * The manticore keyboard needs to have all the interfaces
		 * opened at least once to be fully functional.
		 */
		if (FUNC2(hdev))
			FUNC1(hdev);
		break;
	}

	return 0;
enabling_err:
	FUNC4(hdev);
err:
	return ret;
}