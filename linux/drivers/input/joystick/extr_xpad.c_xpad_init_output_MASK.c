#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  odata_dma; int /*<<< orphan*/  odata; int /*<<< orphan*/  udev; TYPE_1__* irq_out; int /*<<< orphan*/  odata_lock; int /*<<< orphan*/  irq_out_anchor; } ;
struct usb_interface {int dummy; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  XPAD_PKT_LEN ; 
 scalar_t__ XTYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_xpad*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xpad_irq_out ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf, struct usb_xpad *xpad,
			struct usb_endpoint_descriptor *ep_irq_out)
{
	int error;

	if (xpad->xtype == XTYPE_UNKNOWN)
		return 0;

	FUNC0(&xpad->irq_out_anchor);

	xpad->odata = FUNC2(xpad->udev, XPAD_PKT_LEN,
					 GFP_KERNEL, &xpad->odata_dma);
	if (!xpad->odata)
		return -ENOMEM;

	FUNC1(&xpad->odata_lock);

	xpad->irq_out = FUNC3(0, GFP_KERNEL);
	if (!xpad->irq_out) {
		error = -ENOMEM;
		goto err_free_coherent;
	}

	FUNC4(xpad->irq_out, xpad->udev,
			 FUNC6(xpad->udev, ep_irq_out->bEndpointAddress),
			 xpad->odata, XPAD_PKT_LEN,
			 xpad_irq_out, xpad, ep_irq_out->bInterval);
	xpad->irq_out->transfer_dma = xpad->odata_dma;
	xpad->irq_out->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

	return 0;

err_free_coherent:
	FUNC5(xpad->udev, XPAD_PKT_LEN, xpad->odata, xpad->odata_dma);
	return error;
}