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
struct usb_xpad {int mapping; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef  int __s16 ;
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
 int /*<<< orphan*/  BTN_C ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_THUMBL ; 
 int /*<<< orphan*/  BTN_THUMBR ; 
 int /*<<< orphan*/  BTN_TL2 ; 
 int /*<<< orphan*/  BTN_TR2 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY1 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY2 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY3 ; 
 int /*<<< orphan*/  BTN_TRIGGER_HAPPY4 ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  BTN_Z ; 
 int MAP_DPAD_TO_BUTTONS ; 
 int MAP_STICKS_TO_NULL ; 
 int MAP_TRIGGERS_TO_BUTTONS ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usb_xpad *xpad, u16 cmd, unsigned char *data)
{
	struct input_dev *dev = xpad->dev;

	if (!(xpad->mapping & MAP_STICKS_TO_NULL)) {
		/* left stick */
		FUNC0(dev, ABS_X,
				 (__s16) FUNC3((__le16 *)(data + 12)));
		FUNC0(dev, ABS_Y,
				 ~(__s16) FUNC3((__le16 *)(data + 14)));

		/* right stick */
		FUNC0(dev, ABS_RX,
				 (__s16) FUNC3((__le16 *)(data + 16)));
		FUNC0(dev, ABS_RY,
				 ~(__s16) FUNC3((__le16 *)(data + 18)));
	}

	/* triggers left/right */
	if (xpad->mapping & MAP_TRIGGERS_TO_BUTTONS) {
		FUNC1(dev, BTN_TL2, data[10]);
		FUNC1(dev, BTN_TR2, data[11]);
	} else {
		FUNC0(dev, ABS_Z, data[10]);
		FUNC0(dev, ABS_RZ, data[11]);
	}

	/* digital pad */
	if (xpad->mapping & MAP_DPAD_TO_BUTTONS) {
		/* dpad as buttons (left, right, up, down) */
		FUNC1(dev, BTN_TRIGGER_HAPPY1, data[2] & 0x04);
		FUNC1(dev, BTN_TRIGGER_HAPPY2, data[2] & 0x08);
		FUNC1(dev, BTN_TRIGGER_HAPPY3, data[2] & 0x01);
		FUNC1(dev, BTN_TRIGGER_HAPPY4, data[2] & 0x02);
	} else {
		FUNC0(dev, ABS_HAT0X,
				 !!(data[2] & 0x08) - !!(data[2] & 0x04));
		FUNC0(dev, ABS_HAT0Y,
				 !!(data[2] & 0x02) - !!(data[2] & 0x01));
	}

	/* start/back buttons and stick press left/right */
	FUNC1(dev, BTN_START,  data[2] & 0x10);
	FUNC1(dev, BTN_SELECT, data[2] & 0x20);
	FUNC1(dev, BTN_THUMBL, data[2] & 0x40);
	FUNC1(dev, BTN_THUMBR, data[2] & 0x80);

	/* "analog" buttons A, B, X, Y */
	FUNC1(dev, BTN_A, data[4]);
	FUNC1(dev, BTN_B, data[5]);
	FUNC1(dev, BTN_X, data[6]);
	FUNC1(dev, BTN_Y, data[7]);

	/* "analog" buttons black, white */
	FUNC1(dev, BTN_C, data[8]);
	FUNC1(dev, BTN_Z, data[9]);

	FUNC2(dev);
}