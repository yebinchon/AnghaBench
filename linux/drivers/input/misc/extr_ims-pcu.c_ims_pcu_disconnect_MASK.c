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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct usb_interface {TYPE_2__ dev; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {scalar_t__ bInterfaceClass; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct ims_pcu {scalar_t__ bootloader_mode; } ;

/* Variables and functions */
 scalar_t__ USB_CLASS_COMM ; 
 int /*<<< orphan*/  ims_pcu_attr_group ; 
 int /*<<< orphan*/  FUNC0 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC1 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC2 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC3 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC4 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ims_pcu* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct ims_pcu *pcu = FUNC6(intf);
	struct usb_host_interface *alt = intf->cur_altsetting;

	FUNC7(intf, NULL);

	/*
	 * See if we are dealing with control or data interface. The cleanup
	 * happens when we unbind primary (control) interface.
	 */
	if (alt->desc.bInterfaceClass != USB_CLASS_COMM)
		return;

	FUNC5(&intf->dev.kobj, &ims_pcu_attr_group);

	FUNC3(pcu);

	if (pcu->bootloader_mode)
		FUNC2(pcu);
	else
		FUNC1(pcu);

	FUNC0(pcu);
	FUNC4(pcu);
}