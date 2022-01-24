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
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** buffer; struct urb** urb; } ;
struct es2_ap_dev {int* cport_out_urb_busy; int /*<<< orphan*/  hd; struct usb_device* usb_dev; TYPE_1__ cport_in; int /*<<< orphan*/ ** arpc_buffer; struct urb** arpc_urb; struct urb** cport_out_urb; int /*<<< orphan*/  apb_log_enable_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  ES2_CPORT_CDSI0 ; 
 int /*<<< orphan*/  ES2_CPORT_CDSI1 ; 
 int NUM_ARPC_IN_URB ; 
 int NUM_CPORT_IN_URB ; 
 int NUM_CPORT_OUT_URB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 
 int /*<<< orphan*/  FUNC6 (struct es2_ap_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 

__attribute__((used)) static void FUNC8(struct es2_ap_dev *es2)
{
	struct usb_device *udev;
	struct urb *urb;
	int i;

	FUNC0(es2->apb_log_enable_dentry);
	FUNC6(es2);

	/* Tear down everything! */
	for (i = 0; i < NUM_CPORT_OUT_URB; ++i) {
		urb = es2->cport_out_urb[i];
		FUNC5(urb);
		FUNC4(urb);
		es2->cport_out_urb[i] = NULL;
		es2->cport_out_urb_busy[i] = false;	/* just to be anal */
	}

	for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
		FUNC4(es2->arpc_urb[i]);
		FUNC3(es2->arpc_buffer[i]);
		es2->arpc_buffer[i] = NULL;
	}

	for (i = 0; i < NUM_CPORT_IN_URB; ++i) {
		FUNC4(es2->cport_in.urb[i]);
		FUNC3(es2->cport_in.buffer[i]);
		es2->cport_in.buffer[i] = NULL;
	}

	/* release reserved CDSI0 and CDSI1 cports */
	FUNC1(es2->hd, ES2_CPORT_CDSI1);
	FUNC1(es2->hd, ES2_CPORT_CDSI0);

	udev = es2->usb_dev;
	FUNC2(es2->hd);

	FUNC7(udev);
}