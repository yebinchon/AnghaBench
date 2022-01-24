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
struct usbhid_device {size_t ctrltail; int bufsize; int ifnum; int /*<<< orphan*/  last_ctrl; TYPE_3__* urbctrl; TYPE_2__* cr; TYPE_1__* ctrl; int /*<<< orphan*/  ctrlbuf; } ;
struct hid_report {int size; int id; int type; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_6__ {int transfer_buffer_length; int /*<<< orphan*/  dev; int /*<<< orphan*/  pipe; } ;
struct TYPE_5__ {unsigned char bRequestType; scalar_t__ bRequest; void* wLength; void* wIndex; void* wValue; } ;
struct TYPE_4__ {char* raw_report; unsigned char dir; struct hid_report* report; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HID_REQ_GET_REPORT ; 
 scalar_t__ HID_REQ_SET_REPORT ; 
 unsigned char USB_DIR_OUT ; 
 unsigned char USB_RECIP_INTERFACE ; 
 unsigned char USB_TYPE_CLASS ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct hid_device *hid)
{
	struct hid_report *report;
	unsigned char dir;
	char *raw_report;
	int len, r;
	struct usbhid_device *usbhid = hid->driver_data;

	report = usbhid->ctrl[usbhid->ctrltail].report;
	raw_report = usbhid->ctrl[usbhid->ctrltail].raw_report;
	dir = usbhid->ctrl[usbhid->ctrltail].dir;

	len = ((report->size - 1) >> 3) + 1 + (report->id > 0);
	if (dir == USB_DIR_OUT) {
		usbhid->urbctrl->pipe = FUNC9(FUNC4(hid), 0);
		usbhid->urbctrl->transfer_buffer_length = len;
		if (raw_report) {
			FUNC6(usbhid->ctrlbuf, raw_report, len);
			FUNC5(raw_report);
			usbhid->ctrl[usbhid->ctrltail].raw_report = NULL;
		}
	} else {
		int maxpacket, padlen;

		usbhid->urbctrl->pipe = FUNC8(FUNC4(hid), 0);
		maxpacket = FUNC7(FUNC4(hid),
					  usbhid->urbctrl->pipe, 0);
		if (maxpacket > 0) {
			padlen = FUNC0(len, maxpacket);
			padlen *= maxpacket;
			if (padlen > usbhid->bufsize)
				padlen = usbhid->bufsize;
		} else
			padlen = 0;
		usbhid->urbctrl->transfer_buffer_length = padlen;
	}
	usbhid->urbctrl->dev = FUNC4(hid);

	usbhid->cr->bRequestType = USB_TYPE_CLASS | USB_RECIP_INTERFACE | dir;
	usbhid->cr->bRequest = (dir == USB_DIR_OUT) ? HID_REQ_SET_REPORT :
						      HID_REQ_GET_REPORT;
	usbhid->cr->wValue = FUNC1(((report->type + 1) << 8) |
					 report->id);
	usbhid->cr->wIndex = FUNC1(usbhid->ifnum);
	usbhid->cr->wLength = FUNC1(len);

	FUNC2("submitting ctrl urb: %s wValue=0x%04x wIndex=0x%04x wLength=%u\n",
		usbhid->cr->bRequest == HID_REQ_SET_REPORT ? "Set_Report" :
							     "Get_Report",
		usbhid->cr->wValue, usbhid->cr->wIndex, usbhid->cr->wLength);

	r = FUNC10(usbhid->urbctrl, GFP_ATOMIC);
	if (r < 0) {
		FUNC3(hid, "usb_submit_urb(ctrl) failed: %d\n", r);
		return r;
	}
	usbhid->last_ctrl = jiffies;
	return 0;
}