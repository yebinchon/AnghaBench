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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct usb_device {int dummy; } ;
struct usb_ctrlrequest {int bRequestType; int /*<<< orphan*/  wLength; scalar_t__ wIndex; scalar_t__ wValue; int /*<<< orphan*/  bRequest; } ;
struct urb {int dummy; } ;
struct es2_ap_dev {struct usb_device* usb_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  ap_urb_complete ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_ctrlrequest*) ; 
 struct usb_ctrlrequest* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,scalar_t__) ; 
 struct urb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,struct usb_device*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,struct usb_ctrlrequest*) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct es2_ap_dev *es2, void *req, u16 size, u8 cmd)
{
	struct usb_device *udev = es2->usb_dev;
	struct urb *urb;
	struct usb_ctrlrequest *dr;
	u8 *buf;
	int retval;

	urb = FUNC4(0, GFP_ATOMIC);
	if (!urb)
		return -ENOMEM;

	dr = FUNC2(sizeof(*dr) + size, GFP_ATOMIC);
	if (!dr) {
		FUNC6(urb);
		return -ENOMEM;
	}

	buf = (u8 *)dr + sizeof(*dr);
	FUNC3(buf, req, size);

	dr->bRequest = cmd;
	dr->bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE;
	dr->wValue = 0;
	dr->wIndex = 0;
	dr->wLength = FUNC0(size);

	FUNC5(urb, udev, FUNC7(udev, 0),
			     (unsigned char *)dr, buf, size,
			     ap_urb_complete, dr);
	retval = FUNC8(urb, GFP_ATOMIC);
	if (retval) {
		FUNC6(urb);
		FUNC1(dr);
	}
	return retval;
}