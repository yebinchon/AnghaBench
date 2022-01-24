#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct atp {TYPE_2__* urb; int /*<<< orphan*/  data; TYPE_1__* info; int /*<<< orphan*/  udev; int /*<<< orphan*/  input; } ;
struct TYPE_5__ {int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_4__ {int /*<<< orphan*/  datalen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 struct atp* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *iface)
{
	struct atp *dev = FUNC5(iface);

	FUNC7(iface, NULL);
	if (dev) {
		FUNC6(dev->urb);
		FUNC1(dev->input);
		FUNC3(dev->udev, dev->info->datalen,
				  dev->data, dev->urb->transfer_dma);
		FUNC4(dev->urb);
		FUNC2(dev);
	}
	FUNC0(&iface->dev, "input: appletouch disconnected\n");
}