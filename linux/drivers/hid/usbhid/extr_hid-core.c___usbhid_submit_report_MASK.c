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
struct usbhid_device {int outhead; int outtail; int ctrlhead; int ctrltail; int /*<<< orphan*/  intf; int /*<<< orphan*/  iofl; scalar_t__ urbctrl; int /*<<< orphan*/  lock; scalar_t__ last_ctrl; TYPE_2__* ctrl; scalar_t__ urbout; scalar_t__ last_out; TYPE_1__* out; } ;
struct hid_report {scalar_t__ type; } ;
struct hid_device {int quirks; struct usbhid_device* driver_data; } ;
struct TYPE_4__ {unsigned char dir; struct hid_report* report; void* raw_report; } ;
struct TYPE_3__ {struct hid_report* report; void* raw_report; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HID_CONTROL_FIFO_SIZE ; 
 int /*<<< orphan*/  HID_CTRL_RUNNING ; 
 int /*<<< orphan*/  HID_DISCONNECTED ; 
 int HID_OUTPUT_FIFO_SIZE ; 
 scalar_t__ HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_OUT_RUNNING ; 
 int HID_QUIRK_NOGET ; 
 int HZ ; 
 unsigned char USB_DIR_IN ; 
 unsigned char USB_DIR_OUT ; 
 void* FUNC0 (struct hid_report*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_report*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct usbhid_device*) ; 

__attribute__((used)) static void FUNC14(struct hid_device *hid, struct hid_report *report,
				   unsigned char dir)
{
	int head;
	struct usbhid_device *usbhid = hid->driver_data;

	if (((hid->quirks & HID_QUIRK_NOGET) && dir == USB_DIR_IN) ||
		FUNC5(HID_DISCONNECTED, &usbhid->iofl))
		return;

	if (usbhid->urbout && dir == USB_DIR_OUT && report->type == HID_OUTPUT_REPORT) {
		if ((head = (usbhid->outhead + 1) & (HID_OUTPUT_FIFO_SIZE - 1)) == usbhid->outtail) {
			FUNC2(hid, "output queue full\n");
			return;
		}

		usbhid->out[usbhid->outhead].raw_report = FUNC0(report, GFP_ATOMIC);
		if (!usbhid->out[usbhid->outhead].raw_report) {
			FUNC2(hid, "output queueing failed\n");
			return;
		}
		FUNC1(report, usbhid->out[usbhid->outhead].raw_report);
		usbhid->out[usbhid->outhead].report = report;
		usbhid->outhead = head;

		/* If the queue isn't running, restart it */
		if (!FUNC5(HID_OUT_RUNNING, &usbhid->iofl)) {
			FUNC13(usbhid);

		/* Otherwise see if an earlier request has timed out */
		} else if (FUNC6(jiffies, usbhid->last_out + HZ * 5)) {

			/* Prevent autosuspend following the unlink */
			FUNC7(usbhid->intf);

			/*
			 * Prevent resubmission in case the URB completes
			 * before we can unlink it.  We don't want to cancel
			 * the wrong transfer!
			 */
			FUNC9(usbhid->urbout);

			/* Drop lock to avoid deadlock if the callback runs */
			FUNC4(&usbhid->lock);

			FUNC11(usbhid->urbout);
			FUNC3(&usbhid->lock);
			FUNC10(usbhid->urbout);

			/* Unlink might have stopped the queue */
			if (!FUNC5(HID_OUT_RUNNING, &usbhid->iofl))
				FUNC13(usbhid);

			/* Now we can allow autosuspend again */
			FUNC8(usbhid->intf);
		}
		return;
	}

	if ((head = (usbhid->ctrlhead + 1) & (HID_CONTROL_FIFO_SIZE - 1)) == usbhid->ctrltail) {
		FUNC2(hid, "control queue full\n");
		return;
	}

	if (dir == USB_DIR_OUT) {
		usbhid->ctrl[usbhid->ctrlhead].raw_report = FUNC0(report, GFP_ATOMIC);
		if (!usbhid->ctrl[usbhid->ctrlhead].raw_report) {
			FUNC2(hid, "control queueing failed\n");
			return;
		}
		FUNC1(report, usbhid->ctrl[usbhid->ctrlhead].raw_report);
	}
	usbhid->ctrl[usbhid->ctrlhead].report = report;
	usbhid->ctrl[usbhid->ctrlhead].dir = dir;
	usbhid->ctrlhead = head;

	/* If the queue isn't running, restart it */
	if (!FUNC5(HID_CTRL_RUNNING, &usbhid->iofl)) {
		FUNC12(usbhid);

	/* Otherwise see if an earlier request has timed out */
	} else if (FUNC6(jiffies, usbhid->last_ctrl + HZ * 5)) {

		/* Prevent autosuspend following the unlink */
		FUNC7(usbhid->intf);

		/*
		 * Prevent resubmission in case the URB completes
		 * before we can unlink it.  We don't want to cancel
		 * the wrong transfer!
		 */
		FUNC9(usbhid->urbctrl);

		/* Drop lock to avoid deadlock if the callback runs */
		FUNC4(&usbhid->lock);

		FUNC11(usbhid->urbctrl);
		FUNC3(&usbhid->lock);
		FUNC10(usbhid->urbctrl);

		/* Unlink might have stopped the queue */
		if (!FUNC5(HID_CTRL_RUNNING, &usbhid->iofl))
			FUNC12(usbhid);

		/* Now we can allow autosuspend again */
		FUNC8(usbhid->intf);
	}
}