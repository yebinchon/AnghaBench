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
struct usbhid_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; } ;
struct usb_interface {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_DISCONNECTED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC6 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct hid_device *hid = FUNC6(intf);
	struct usbhid_device *usbhid;

	if (FUNC0(!hid))
		return;

	usbhid = hid->driver_data;
	FUNC4(&usbhid->lock);	/* Sync with error and led handlers */
	FUNC3(HID_DISCONNECTED, &usbhid->iofl);
	FUNC5(&usbhid->lock);
	FUNC1(hid);
	FUNC2(usbhid);
}