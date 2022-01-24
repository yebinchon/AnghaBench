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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct iforce_usb {int /*<<< orphan*/  out; int /*<<< orphan*/  irq; TYPE_1__ iforce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iforce_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iforce_usb* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct iforce_usb *iforce_usb = FUNC3(intf);

	FUNC4(intf, NULL);

	FUNC0(iforce_usb->iforce.dev);

	FUNC2(iforce_usb->irq);
	FUNC2(iforce_usb->out);

	FUNC1(iforce_usb);
}