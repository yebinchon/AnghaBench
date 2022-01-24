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
struct usb_xpad {scalar_t__ xtype; struct input_dev* dev; } ;
struct usb_interface {int dummy; } ;
struct input_dev {int /*<<< orphan*/  mutex; scalar_t__ users; } ;

/* Variables and functions */
 scalar_t__ XTYPE_XBOX360W ; 
 scalar_t__ XTYPE_XBOXONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_xpad* FUNC2 (struct usb_interface*) ; 
 int FUNC3 (struct usb_xpad*) ; 
 int FUNC4 (struct usb_xpad*) ; 
 int FUNC5 (struct usb_xpad*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct usb_xpad *xpad = FUNC2(intf);
	struct input_dev *input = xpad->dev;
	int retval = 0;

	if (xpad->xtype == XTYPE_XBOX360W) {
		retval = FUNC3(xpad);
	} else {
		FUNC0(&input->mutex);
		if (input->users) {
			retval = FUNC4(xpad);
		} else if (xpad->xtype == XTYPE_XBOXONE) {
			/*
			 * Even if there are no users, we'll send Xbox One pads
			 * the startup sequence so they don't sit there and
			 * blink until somebody opens the input device again.
			 */
			retval = FUNC5(xpad);
		}
		FUNC1(&input->mutex);
	}

	return retval;
}