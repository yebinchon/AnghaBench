#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {TYPE_1__* intf; int /*<<< orphan*/  urbin; int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; } ;
struct hid_device {int quirks; struct usbhid_device* driver_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_IN_POLLING ; 
 int /*<<< orphan*/  HID_OPENED ; 
 int HID_QUIRK_ALWAYS_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;

	/*
	 * Make sure we don't restart data acquisition due to
	 * a resumption we no longer care about by avoiding racing
	 * with hid_start_in().
	 */
	FUNC2(&usbhid->lock);
	FUNC0(HID_OPENED, &usbhid->iofl);
	if (!(hid->quirks & HID_QUIRK_ALWAYS_POLL))
		FUNC0(HID_IN_POLLING, &usbhid->iofl);
	FUNC3(&usbhid->lock);

	if (hid->quirks & HID_QUIRK_ALWAYS_POLL)
		return;

	FUNC1(usbhid);
	FUNC4(usbhid->urbin);
	usbhid->intf->needs_remote_wakeup = 0;
}