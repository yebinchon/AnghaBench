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
struct usbhid_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  intf; int /*<<< orphan*/  iofl; int /*<<< orphan*/  outtail; int /*<<< orphan*/  outhead; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_OUT_RUNNING ; 
 int /*<<< orphan*/  HID_RESET_PENDING ; 
 int /*<<< orphan*/  HID_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct hid_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct usbhid_device *usbhid)
{
	struct hid_device *hid = FUNC8(usbhid->intf);
	int kicked;
	int r;

	if (!hid || FUNC4(HID_RESET_PENDING, &usbhid->iofl) ||
			FUNC4(HID_SUSPENDED, &usbhid->iofl))
		return 0;

	if ((kicked = (usbhid->outhead != usbhid->outtail))) {
		FUNC1(hid, "Kicking head %d tail %d", usbhid->outhead, usbhid->outtail);

		/* Try to wake up from autosuspend... */
		r = FUNC5(usbhid->intf);
		if (r < 0)
			return r;

		/*
		 * If still suspended, don't submit.  Submission will
		 * occur if/when resume drains the queue.
		 */
		if (FUNC4(HID_SUSPENDED, &usbhid->iofl)) {
			FUNC7(usbhid->intf);
			return r;
		}

		/* Asynchronously flush queue. */
		FUNC3(HID_OUT_RUNNING, &usbhid->iofl);
		if (FUNC2(hid)) {
			FUNC0(HID_OUT_RUNNING, &usbhid->iofl);
			FUNC6(usbhid->intf);
		}
		FUNC9(&usbhid->wait);
	}
	return kicked;
}