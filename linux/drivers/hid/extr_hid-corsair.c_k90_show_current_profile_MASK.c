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
 int /*<<< orphan*/  K90_REQUEST_STATUS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct usb_interface* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
					struct device_attribute *attr,
					char *buf)
{
	int ret;
	struct usb_interface *usbif = FUNC5(dev->parent);
	struct usb_device *usbdev = FUNC1(usbif);
	int current_profile;
	char *data;

	data = FUNC3(8, GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC6(usbdev, FUNC7(usbdev, 0),
			      K90_REQUEST_STATUS,
			      USB_DIR_IN | USB_TYPE_VENDOR |
			      USB_RECIP_DEVICE, 0, 0, data, 8,
			      USB_CTRL_SET_TIMEOUT);
	if (ret < 8) {
		FUNC0(dev, "Failed to get K90 initial state (error %d).\n",
			 ret);
		ret = -EIO;
		goto out;
	}
	current_profile = data[7];
	if (current_profile < 1 || current_profile > 3) {
		FUNC0(dev, "Read invalid current profile: %02hhx.\n",
			 data[7]);
		ret = -EIO;
		goto out;
	}

	ret = FUNC4(buf, PAGE_SIZE, "%d\n", current_profile);
out:
	FUNC2(data);

	return ret;
}