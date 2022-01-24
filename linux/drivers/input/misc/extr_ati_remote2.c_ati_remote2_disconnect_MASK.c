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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct ati_remote2 {int /*<<< orphan*/ * intf; TYPE_2__* udev; int /*<<< orphan*/  idev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {TYPE_3__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ati_remote2_attr_group ; 
 int /*<<< orphan*/  ati_remote2_driver ; 
 int /*<<< orphan*/  FUNC0 (struct ati_remote2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ati_remote2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ati_remote2* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *interface)
{
	struct ati_remote2 *ar2;
	struct usb_host_interface *alt = interface->cur_altsetting;

	if (alt->desc.bInterfaceNumber)
		return;

	ar2 = FUNC5(interface);
	FUNC6(interface, NULL);

	FUNC1(ar2->idev);

	FUNC3(&ar2->udev->dev.kobj, &ati_remote2_attr_group);

	FUNC0(ar2);

	FUNC4(&ati_remote2_driver, ar2->intf[1]);

	FUNC2(ar2);
}