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
struct usb_xpad {scalar_t__ xtype; scalar_t__ pad_present; struct input_dev* dev; } ;
struct usb_interface {int dummy; } ;
struct input_dev {int /*<<< orphan*/  mutex; scalar_t__ users; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 scalar_t__ XTYPE_XBOX360W ; 
 scalar_t__ auto_poweroff ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_xpad* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xpad*) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf, pm_message_t message)
{
	struct usb_xpad *xpad = FUNC2(intf);
	struct input_dev *input = xpad->dev;

	if (xpad->xtype == XTYPE_XBOX360W) {
		/*
		 * Wireless controllers always listen to input so
		 * they are notified when controller shows up
		 * or goes away.
		 */
		FUNC4(xpad);

		/*
		 * The wireless adapter is going off now, so the
		 * gamepads are going to become disconnected.
		 * Unless explicitly disabled, power them down
		 * so they don't just sit there flashing.
		 */
		if (auto_poweroff && xpad->pad_present)
			FUNC3(xpad);
	} else {
		FUNC0(&input->mutex);
		if (input->users)
			FUNC5(xpad);
		FUNC1(&input->mutex);
	}

	FUNC6(xpad);

	return 0;
}