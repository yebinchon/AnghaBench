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
struct usbhid_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; int /*<<< orphan*/  urbin; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HID_DISCONNECTED ; 
 int /*<<< orphan*/  HID_IN_POLLING ; 
 int /*<<< orphan*/  HID_IN_RUNNING ; 
 int /*<<< orphan*/  HID_NO_BANDWIDTH ; 
 int /*<<< orphan*/  HID_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hid)
{
	unsigned long flags;
	int rc = 0;
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC2(&usbhid->lock, flags);
	if (FUNC5(HID_IN_POLLING, &usbhid->iofl) &&
	    !FUNC5(HID_DISCONNECTED, &usbhid->iofl) &&
	    !FUNC5(HID_SUSPENDED, &usbhid->iofl) &&
	    !FUNC4(HID_IN_RUNNING, &usbhid->iofl)) {
		rc = FUNC6(usbhid->urbin, GFP_ATOMIC);
		if (rc != 0) {
			FUNC0(HID_IN_RUNNING, &usbhid->iofl);
			if (rc == -ENOSPC)
				FUNC1(HID_NO_BANDWIDTH, &usbhid->iofl);
		} else {
			FUNC0(HID_NO_BANDWIDTH, &usbhid->iofl);
		}
	}
	FUNC3(&usbhid->lock, flags);
	return rc;
}