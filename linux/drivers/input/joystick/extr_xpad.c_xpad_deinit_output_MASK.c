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
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  odata_dma; int /*<<< orphan*/  odata; int /*<<< orphan*/  udev; int /*<<< orphan*/  irq_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPAD_PKT_LEN ; 
 scalar_t__ XTYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usb_xpad *xpad)
{
	if (xpad->xtype != XTYPE_UNKNOWN) {
		FUNC1(xpad->irq_out);
		FUNC0(xpad->udev, XPAD_PKT_LEN,
				xpad->odata, xpad->odata_dma);
	}
}