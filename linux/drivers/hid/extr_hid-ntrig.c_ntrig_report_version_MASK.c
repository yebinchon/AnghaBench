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
struct usb_device {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_CLEAR_FEATURE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,char*,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 struct usb_device* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned char*,char*) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct hid_device *hdev)
{
	int ret;
	char buf[20];
	struct usb_device *usb_dev = FUNC1(hdev);
	unsigned char *data = FUNC3(8, GFP_KERNEL);

	if (!data)
		goto err_free;

	ret = FUNC5(usb_dev, FUNC6(usb_dev, 0),
			      USB_REQ_CLEAR_FEATURE,
			      USB_TYPE_CLASS | USB_RECIP_INTERFACE |
			      USB_DIR_IN,
			      0x30c, 1, data, 8,
			      USB_CTRL_SET_TIMEOUT);

	if (ret == 8) {
		ret = FUNC4(&data[2], buf);

		FUNC0(hdev, "Firmware version: %s (%02x%02x %02x%02x)\n",
			 buf, data[2], data[3], data[4], data[5]);
	}

err_free:
	FUNC2(data);
}