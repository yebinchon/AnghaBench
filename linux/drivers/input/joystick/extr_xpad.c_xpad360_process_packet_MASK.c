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
struct usb_xpad {int mapping; scalar_t__ xtype; } ;
struct input_dev {int dummy; } ;
typedef  unsigned char __s16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_RZ ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_MODE ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_THUMBL ; 
 int /*<<< orphan*/  BTN_THUMBR ; 
 int /*<<< orphan*/  BTN_TL ; 
 int /*<<< orphan*/  BTN_TL2 ; 
 int /*<<< orphan*/  BTN_TR ; 
 int /*<<< orphan*/  BTN_TR2 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY1 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY2 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY3 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY4 ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int MAP_DPAD_TO_BUTTONS ; 
 int MAP_STICKS_TO_NULL ; 
 int MAP_TRIGGERS_TO_BUTTONS ; 
 scalar_t__ XTYPE_XBOX360W ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_xpad *xpad, struct input_dev *dev,
				   u16 cmd, unsigned char *data)
{
	/* valid pad data */
	if (data[0] != 0x00)
		return;

	/* digital pad */
	if (xpad->mapping & MAP_DPAD_TO_BUTTONS) {
		/* dpad as buttons (left, right, up, down) */
		FUNC1(dev, BTN_TRIGGER_HAPPY1, data[2] & 0x04);
		FUNC1(dev, BTN_TRIGGER_HAPPY2, data[2] & 0x08);
		FUNC1(dev, BTN_TRIGGER_HAPPY3, data[2] & 0x01);
		FUNC1(dev, BTN_TRIGGER_HAPPY4, data[2] & 0x02);
	}

	/*
	 * This should be a simple else block. However historically
	 * xbox360w has mapped DPAD to buttons while xbox360 did not. This
	 * made no sense, but now we can not just switch back and have to
	 * support both behaviors.
	 */
	if (!(xpad->mapping & MAP_DPAD_TO_BUTTONS) ||
	    xpad->xtype == XTYPE_XBOX360W) {
		FUNC0(dev, ABS_HAT0X,
				 !!(data[2] & 0x08) - !!(data[2] & 0x04));
		FUNC0(dev, ABS_HAT0Y,
				 !!(data[2] & 0x02) - !!(data[2] & 0x01));
	}

	/* start/back buttons */
	FUNC1(dev, BTN_START,  data[2] & 0x10);
	FUNC1(dev, BTN_SELECT, data[2] & 0x20);

	/* stick press left/right */
	FUNC1(dev, BTN_THUMBL, data[2] & 0x40);
	FUNC1(dev, BTN_THUMBR, data[2] & 0x80);

	/* buttons A,B,X,Y,TL,TR and MODE */
	FUNC1(dev, BTN_A,	data[3] & 0x10);
	FUNC1(dev, BTN_B,	data[3] & 0x20);
	FUNC1(dev, BTN_X,	data[3] & 0x40);
	FUNC1(dev, BTN_Y,	data[3] & 0x80);
	FUNC1(dev, BTN_TL,	data[3] & 0x01);
	FUNC1(dev, BTN_TR,	data[3] & 0x02);
	FUNC1(dev, BTN_MODE,	data[3] & 0x04);

	if (!(xpad->mapping & MAP_STICKS_TO_NULL)) {
		/* left stick */
		FUNC0(dev, ABS_X,
				 (__s16) FUNC3((__le16 *)(data + 6)));
		FUNC0(dev, ABS_Y,
				 ~(__s16) FUNC3((__le16 *)(data + 8)));

		/* right stick */
		FUNC0(dev, ABS_RX,
				 (__s16) FUNC3((__le16 *)(data + 10)));
		FUNC0(dev, ABS_RY,
				 ~(__s16) FUNC3((__le16 *)(data + 12)));
	}

	/* triggers left/right */
	if (xpad->mapping & MAP_TRIGGERS_TO_BUTTONS) {
		FUNC1(dev, BTN_TL2, data[4]);
		FUNC1(dev, BTN_TR2, data[5]);
	} else {
		FUNC0(dev, ABS_Z, data[4]);
		FUNC0(dev, ABS_RZ, data[5]);
	}

	FUNC2(dev);
}