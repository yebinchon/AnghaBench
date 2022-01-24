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
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  idata_dma; int /*<<< orphan*/  idata; int /*<<< orphan*/  udev; int /*<<< orphan*/  irq_in; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPAD_PKT_LEN ; 
 scalar_t__ XTYPE_XBOX360W ; 
 int /*<<< orphan*/  FUNC0 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct usb_xpad* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xpad*) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct usb_xpad *xpad = FUNC3(intf);

	if (xpad->xtype == XTYPE_XBOX360W)
		FUNC5(xpad);

	FUNC6(xpad);

	/*
	 * Now that both input device and LED device are gone we can
	 * stop output URB.
	 */
	FUNC8(xpad);

	FUNC7(xpad);

	FUNC2(xpad->irq_in);
	FUNC1(xpad->udev, XPAD_PKT_LEN,
			xpad->idata, xpad->idata_dma);

	FUNC0(xpad);

	FUNC4(intf, NULL);
}