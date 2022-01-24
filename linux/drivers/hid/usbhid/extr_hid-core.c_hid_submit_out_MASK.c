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
struct usbhid_device {size_t outtail; int /*<<< orphan*/  last_out; TYPE_2__* urbout; TYPE_1__* out; int /*<<< orphan*/  outbuf; } ;
struct hid_report {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {char* raw_report; struct hid_report* report; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_report*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hid)
{
	struct hid_report *report;
	char *raw_report;
	struct usbhid_device *usbhid = hid->driver_data;
	int r;

	report = usbhid->out[usbhid->outtail].report;
	raw_report = usbhid->out[usbhid->outtail].raw_report;

	usbhid->urbout->transfer_buffer_length = FUNC2(report);
	usbhid->urbout->dev = FUNC3(hid);
	if (raw_report) {
		FUNC5(usbhid->outbuf, raw_report,
				usbhid->urbout->transfer_buffer_length);
		FUNC4(raw_report);
		usbhid->out[usbhid->outtail].raw_report = NULL;
	}

	FUNC0("submitting out urb\n");

	r = FUNC6(usbhid->urbout, GFP_ATOMIC);
	if (r < 0) {
		FUNC1(hid, "usb_submit_urb(out) failed: %d\n", r);
		return r;
	}
	usbhid->last_out = jiffies;
	return 0;
}