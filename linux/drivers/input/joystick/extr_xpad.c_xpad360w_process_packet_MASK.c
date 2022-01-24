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
typedef  int /*<<< orphan*/  u16 ;
struct usb_xpad {int pad_present; int /*<<< orphan*/  x360w_dev; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct input_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xpad*,struct input_dev*,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static void FUNC5(struct usb_xpad *xpad, u16 cmd, unsigned char *data)
{
	struct input_dev *dev;
	bool present;

	/* Presence change */
	if (data[0] & 0x08) {
		present = (data[1] & 0x80) != 0;

		if (xpad->pad_present != present) {
			xpad->pad_present = present;
			FUNC3(&xpad->work);
		}
	}

	/* Valid pad data */
	if (data[1] != 0x1)
		return;

	FUNC1();
	dev = FUNC0(xpad->x360w_dev);
	if (dev)
		FUNC4(xpad, dev, cmd, &data[4]);
	FUNC2();
}