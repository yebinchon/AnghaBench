#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int HID_REQ_SET_IDLE ; 
 int FUNC0 (struct usb_device*,int,int,int) ; 
 struct usb_device* FUNC1 (struct hid_device*) ; 
 struct usb_interface* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hid, int report, int idle,
		int reqtype)
{
	struct usb_device *dev = FUNC1(hid);
	struct usb_interface *intf = FUNC2(hid->dev.parent);
	struct usb_host_interface *interface = intf->cur_altsetting;
	int ifnum = interface->desc.bInterfaceNumber;

	if (reqtype != HID_REQ_SET_IDLE)
		return -EINVAL;

	return FUNC0(dev, ifnum, report, idle);
}