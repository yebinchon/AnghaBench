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
typedef  int uint ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC5(struct usb_device *usb_dev, uint report_id,
		void const *data, uint size)
{
	char *buf;
	int len;

	buf = FUNC1(data, size, GFP_KERNEL);
	if (buf == NULL)
		return -ENOMEM;

	len = FUNC3(usb_dev, FUNC4(usb_dev, 0),
			HID_REQ_SET_REPORT,
			USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
			FUNC2(report_id),
			0, buf, size, USB_CTRL_SET_TIMEOUT);

	FUNC0(buf);
	return ((len < 0) ? len : ((len != size) ? -EIO : 0));
}