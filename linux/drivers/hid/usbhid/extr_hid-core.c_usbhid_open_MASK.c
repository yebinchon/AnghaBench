#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {int /*<<< orphan*/  iofl; TYPE_1__* intf; } ;
struct hid_device {int quirks; struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  HID_IN_POLLING ; 
 int /*<<< orphan*/  HID_OPENED ; 
 int HID_QUIRK_ALWAYS_POLL ; 
 int /*<<< orphan*/  HID_RESUME_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;
	int res;

	FUNC4(HID_OPENED, &usbhid->iofl);

	if (hid->quirks & HID_QUIRK_ALWAYS_POLL)
		return 0;

	res = FUNC5(usbhid->intf);
	/* the device must be awake to reliably request remote wakeup */
	if (res < 0) {
		FUNC0(HID_OPENED, &usbhid->iofl);
		return -EIO;
	}

	usbhid->intf->needs_remote_wakeup = 1;

	FUNC4(HID_RESUME_RUNNING, &usbhid->iofl);
	FUNC4(HID_IN_POLLING, &usbhid->iofl);

	res = FUNC2(hid);
	if (res) {
		if (res != -ENOSPC) {
			FUNC1(hid);
			res = 0;
		} else {
			/* no use opening if resources are insufficient */
			res = -EBUSY;
			FUNC0(HID_OPENED, &usbhid->iofl);
			FUNC0(HID_IN_POLLING, &usbhid->iofl);
			usbhid->intf->needs_remote_wakeup = 0;
		}
	}

	FUNC6(usbhid->intf);

	/*
	 * In case events are generated while nobody was listening,
	 * some are released when the device is re-opened.
	 * Wait 50 msec for the queue to empty before allowing events
	 * to go through hid.
	 */
	if (res == 0)
		FUNC3(50);

	FUNC0(HID_RESUME_RUNNING, &usbhid->iofl);
	return res;
}