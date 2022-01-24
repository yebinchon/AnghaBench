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
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  irq_in; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ XTYPE_XBOXONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_xpad*) ; 

__attribute__((used)) static int FUNC3(struct usb_xpad *xpad)
{
	int error;

	if (FUNC1(xpad->irq_in, GFP_KERNEL))
		return -EIO;

	if (xpad->xtype == XTYPE_XBOXONE) {
		error = FUNC2(xpad);
		if (error) {
			FUNC0(xpad->irq_in);
			return error;
		}
	}

	return 0;
}