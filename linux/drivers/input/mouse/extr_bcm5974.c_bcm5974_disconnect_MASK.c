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
struct usb_interface {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bt_datalen; int /*<<< orphan*/  tp_datalen; } ;
struct bcm5974 {TYPE_2__* bt_urb; TYPE_2__* tp_urb; int /*<<< orphan*/  bt_data; TYPE_1__ cfg; int /*<<< orphan*/  udev; int /*<<< orphan*/  tp_data; int /*<<< orphan*/  input; } ;
struct TYPE_4__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm5974*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct bcm5974* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct usb_interface *iface)
{
	struct bcm5974 *dev = FUNC4(iface);

	FUNC5(iface, NULL);

	FUNC0(dev->input);
	FUNC2(dev->udev, dev->cfg.tp_datalen,
			  dev->tp_data, dev->tp_urb->transfer_dma);
	if (dev->bt_urb)
		FUNC2(dev->udev, dev->cfg.bt_datalen,
				  dev->bt_data, dev->bt_urb->transfer_dma);
	FUNC3(dev->tp_urb);
	FUNC3(dev->bt_urb);
	FUNC1(dev);
}