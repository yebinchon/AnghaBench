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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  K90_MACRO_MODE_HW 129 
#define  K90_MACRO_MODE_SW 128 
 int /*<<< orphan*/  K90_REQUEST_GET_MODE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,char const*) ; 
 struct usb_interface* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	int ret;
	struct usb_interface *usbif = FUNC5(dev->parent);
	struct usb_device *usbdev = FUNC1(usbif);
	const char *macro_mode;
	char *data;

	data = FUNC3(2, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC6(usbdev, FUNC7(usbdev, 0),
			      K90_REQUEST_GET_MODE,
			      USB_DIR_IN | USB_TYPE_VENDOR |
			      USB_RECIP_DEVICE, 0, 0, data, 2,
			      USB_CTRL_SET_TIMEOUT);
	if (ret < 1) {
		FUNC0(dev, "Failed to get K90 initial mode (error %d).\n",
			 ret);
		ret = -EIO;
		goto out;
	}

	switch (data[0]) {
	case K90_MACRO_MODE_HW:
		macro_mode = "HW";
		break;

	case K90_MACRO_MODE_SW:
		macro_mode = "SW";
		break;
	default:
		FUNC0(dev, "K90 in unknown mode: %02hhx.\n",
			 data[0]);
		ret = -EIO;
		goto out;
	}

	ret = FUNC4(buf, PAGE_SIZE, "%s\n", macro_mode);
out:
	FUNC2(data);

	return ret;
}