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
 int EINVAL ; 
 int /*<<< orphan*/  K90_REQUEST_PROFILE ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 scalar_t__ FUNC2 (char const*,int,int*) ; 
 struct usb_interface* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	int ret;
	struct usb_interface *usbif = FUNC3(dev->parent);
	struct usb_device *usbdev = FUNC1(usbif);
	int profile;

	if (FUNC2(buf, 10, &profile))
		return -EINVAL;
	if (profile < 1 || profile > 3)
		return -EINVAL;

	ret = FUNC4(usbdev, FUNC5(usbdev, 0),
			      K90_REQUEST_PROFILE,
			      USB_DIR_OUT | USB_TYPE_VENDOR |
			      USB_RECIP_DEVICE, profile, 0, NULL, 0,
			      USB_CTRL_SET_TIMEOUT);
	if (ret != 0) {
		FUNC0(dev, "Failed to change current profile (error %d).\n",
			 ret);
		return ret;
	}

	return count;
}