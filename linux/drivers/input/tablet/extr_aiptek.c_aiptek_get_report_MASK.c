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
struct usb_device {int dummy; } ;
struct aiptek {int /*<<< orphan*/  ifnum; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_REPORT ; 
 int USB_TYPE_CLASS ; 
 struct usb_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char,int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct aiptek *aiptek,
		  unsigned char report_type,
		  unsigned char report_id, void *buffer, int size)
{
	struct usb_device *udev = FUNC0(aiptek->intf);

	return FUNC1(udev,
			       FUNC2(udev, 0),
			       USB_REQ_GET_REPORT,
			       USB_TYPE_CLASS | USB_RECIP_INTERFACE |
			       USB_DIR_IN, (report_type << 8) + report_id,
			       aiptek->ifnum, buffer, size, 5000);
}