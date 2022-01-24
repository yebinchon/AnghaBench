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
struct usbtouch_usb {int /*<<< orphan*/  input; int /*<<< orphan*/  press; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  touch; struct usbtouch_device_info* type; } ;
struct usbtouch_device_info {scalar_t__ max_press; int /*<<< orphan*/  (* read_data ) (struct usbtouch_usb*,unsigned char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usbtouch_usb*,unsigned char*) ; 
 scalar_t__ swap_xy ; 

__attribute__((used)) static void FUNC4(struct usbtouch_usb *usbtouch,
                                 unsigned char *pkt, int len)
{
	struct usbtouch_device_info *type = usbtouch->type;

	if (!type->read_data(usbtouch, pkt))
			return;

	FUNC1(usbtouch->input, BTN_TOUCH, usbtouch->touch);

	if (swap_xy) {
		FUNC0(usbtouch->input, ABS_X, usbtouch->y);
		FUNC0(usbtouch->input, ABS_Y, usbtouch->x);
	} else {
		FUNC0(usbtouch->input, ABS_X, usbtouch->x);
		FUNC0(usbtouch->input, ABS_Y, usbtouch->y);
	}
	if (type->max_press)
		FUNC0(usbtouch->input, ABS_PRESSURE, usbtouch->press);
	FUNC2(usbtouch->input);
}