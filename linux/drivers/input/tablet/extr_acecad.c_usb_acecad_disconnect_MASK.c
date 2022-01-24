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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_acecad {int /*<<< orphan*/  data_dma; int /*<<< orphan*/  data; int /*<<< orphan*/  irq; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_acecad*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_acecad* FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *intf)
{
	struct usb_acecad *acecad = FUNC5(intf);
	struct usb_device *udev = FUNC1(intf);

	FUNC6(intf, NULL);

	FUNC0(acecad->input);
	FUNC4(acecad->irq);
	FUNC3(udev, 8, acecad->data, acecad->data_dma);
	FUNC2(acecad);
}