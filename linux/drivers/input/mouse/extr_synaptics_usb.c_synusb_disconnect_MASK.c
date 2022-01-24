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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct synusb {int flags; TYPE_1__* urb; int /*<<< orphan*/  data; int /*<<< orphan*/  input; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int SYNUSB_IO_ALWAYS ; 
 int /*<<< orphan*/  SYNUSB_RECV_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct synusb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct synusb* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct synusb *synusb = FUNC6(intf);
	struct usb_device *udev = FUNC1(intf);

	if (synusb->flags & SYNUSB_IO_ALWAYS)
		FUNC3(synusb->input);

	FUNC0(synusb->input);

	FUNC4(udev, SYNUSB_RECV_SIZE, synusb->data,
			  synusb->urb->transfer_dma);
	FUNC5(synusb->urb);
	FUNC2(synusb);

	FUNC7(intf, NULL);
}