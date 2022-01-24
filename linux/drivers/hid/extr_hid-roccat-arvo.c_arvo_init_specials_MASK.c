#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_3__ dev; } ;
struct arvo_roccat_report {int dummy; } ;
struct arvo_device {int chrdev_minor; int roccat_claimed; } ;
struct TYPE_4__ {scalar_t__ bInterfaceProtocol; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USB_INTERFACE_PROTOCOL_KEYBOARD ; 
 int /*<<< orphan*/  arvo_class ; 
 int FUNC0 (struct usb_device*,struct arvo_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,struct arvo_device*) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct arvo_device*) ; 
 struct arvo_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hid_device*,int) ; 
 struct usb_interface* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct hid_device *hdev)
{
	struct usb_interface *intf = FUNC7(hdev->dev.parent);
	struct usb_device *usb_dev = FUNC3(intf);
	struct arvo_device *arvo;
	int retval;

	if (intf->cur_altsetting->desc.bInterfaceProtocol
			== USB_INTERFACE_PROTOCOL_KEYBOARD) {
		FUNC2(hdev, NULL);
		return 0;
	}

	arvo = FUNC5(sizeof(*arvo), GFP_KERNEL);
	if (!arvo) {
		FUNC1(hdev, "can't alloc device descriptor\n");
		return -ENOMEM;
	}
	FUNC2(hdev, arvo);

	retval = FUNC0(usb_dev, arvo);
	if (retval) {
		FUNC1(hdev, "couldn't init struct arvo_device\n");
		goto exit_free;
	}

	retval = FUNC6(arvo_class, hdev,
			sizeof(struct arvo_roccat_report));
	if (retval < 0) {
		FUNC1(hdev, "couldn't init char dev\n");
	} else {
		arvo->chrdev_minor = retval;
		arvo->roccat_claimed = 1;
	}

	return 0;
exit_free:
	FUNC4(arvo);
	return retval;
}