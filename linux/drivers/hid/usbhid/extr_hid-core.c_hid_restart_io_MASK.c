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
struct usbhid_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; scalar_t__ urbout; scalar_t__ retry_delay; int /*<<< orphan*/  reset_work; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CLEAR_HALT ; 
 int /*<<< orphan*/  HID_CTRL_RUNNING ; 
 int /*<<< orphan*/  HID_OUT_RUNNING ; 
 int /*<<< orphan*/  HID_RESET_PENDING ; 
 int /*<<< orphan*/  HID_STARTED ; 
 int /*<<< orphan*/  HID_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 scalar_t__ FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhid_device*) ; 

__attribute__((used)) static void FUNC10(struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;
	int clear_halt = FUNC6(HID_CLEAR_HALT, &usbhid->iofl);
	int reset_pending = FUNC6(HID_RESET_PENDING, &usbhid->iofl);

	FUNC4(&usbhid->lock);
	FUNC0(HID_SUSPENDED, &usbhid->iofl);
	FUNC7(usbhid);

	if (clear_halt || reset_pending)
		FUNC3(&usbhid->reset_work);
	usbhid->retry_delay = 0;
	FUNC5(&usbhid->lock);

	if (reset_pending || !FUNC6(HID_STARTED, &usbhid->iofl))
		return;

	if (!clear_halt) {
		if (FUNC2(hid) < 0)
			FUNC1(hid);
	}

	FUNC4(&usbhid->lock);
	if (usbhid->urbout && !FUNC6(HID_OUT_RUNNING, &usbhid->iofl))
		FUNC9(usbhid);
	if (!FUNC6(HID_CTRL_RUNNING, &usbhid->iofl))
		FUNC8(usbhid);
	FUNC5(&usbhid->lock);
}