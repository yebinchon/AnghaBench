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
struct usbhid_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  intf; int /*<<< orphan*/  iofl; int /*<<< orphan*/  ctrltail; int /*<<< orphan*/  ctrlhead; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CTRL_RUNNING ; 
 int /*<<< orphan*/  HID_RESET_PENDING ; 
 int /*<<< orphan*/  HID_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct hid_device* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct usbhid_device *usbhid)
{
	struct hid_device *hid = FUNC9(usbhid->intf);
	int kicked;
	int r;

	FUNC0(hid == NULL);
	if (!hid || FUNC5(HID_RESET_PENDING, &usbhid->iofl) ||
			FUNC5(HID_SUSPENDED, &usbhid->iofl))
		return 0;

	if ((kicked = (usbhid->ctrlhead != usbhid->ctrltail))) {
		FUNC2(hid, "Kicking head %d tail %d", usbhid->ctrlhead, usbhid->ctrltail);

		/* Try to wake up from autosuspend... */
		r = FUNC6(usbhid->intf);
		if (r < 0)
			return r;

		/*
		 * If still suspended, don't submit.  Submission will
		 * occur if/when resume drains the queue.
		 */
		if (FUNC5(HID_SUSPENDED, &usbhid->iofl)) {
			FUNC8(usbhid->intf);
			return r;
		}

		/* Asynchronously flush queue. */
		FUNC4(HID_CTRL_RUNNING, &usbhid->iofl);
		if (FUNC3(hid)) {
			FUNC1(HID_CTRL_RUNNING, &usbhid->iofl);
			FUNC7(usbhid->intf);
		}
		FUNC10(&usbhid->wait);
	}
	return kicked;
}