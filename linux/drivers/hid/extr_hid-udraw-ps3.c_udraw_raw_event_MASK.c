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
typedef  int u8 ;
struct udraw {int last_one_finger_x; int last_one_finger_y; int last_two_finger_x; int last_two_finger_y; int /*<<< orphan*/  accel_input_dev; int /*<<< orphan*/  pen_input_dev; int /*<<< orphan*/  touch_input_dev; int /*<<< orphan*/  joy_input_dev; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  ABS_Z ; 
 int /*<<< orphan*/  AXIS_X ; 
 int /*<<< orphan*/  AXIS_Y ; 
 int /*<<< orphan*/  AXIS_Z ; 
 int /*<<< orphan*/  BTN_EAST ; 
 int /*<<< orphan*/  BTN_MODE ; 
 int /*<<< orphan*/  BTN_NORTH ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_SOUTH ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BTN_WEST ; 
 int /*<<< orphan*/  MAX_PRESSURE ; 
 scalar_t__ PRESSURE_OFFSET ; 
 int TOUCH_FINGER ; 
 int TOUCH_NONE ; 
 int TOUCH_PEN ; 
 int TOUCH_TWOFINGER ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct udraw* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, struct hid_report *report,
	 u8 *data, int len)
{
	struct udraw *udraw = FUNC2(hdev);
	int touch;
	int x, y, z;

	if (len != 27)
		return 0;

	if (data[11] == 0x00)
		touch = TOUCH_NONE;
	else if (data[11] == 0x40)
		touch = TOUCH_PEN;
	else if (data[11] == 0x80)
		touch = TOUCH_FINGER;
	else
		touch = TOUCH_TWOFINGER;

	/* joypad */
	FUNC4(udraw->joy_input_dev, BTN_WEST, data[0] & 1);
	FUNC4(udraw->joy_input_dev, BTN_SOUTH, !!(data[0] & 2));
	FUNC4(udraw->joy_input_dev, BTN_EAST, !!(data[0] & 4));
	FUNC4(udraw->joy_input_dev, BTN_NORTH, !!(data[0] & 8));

	FUNC4(udraw->joy_input_dev, BTN_SELECT, !!(data[1] & 1));
	FUNC4(udraw->joy_input_dev, BTN_START, !!(data[1] & 2));
	FUNC4(udraw->joy_input_dev, BTN_MODE, !!(data[1] & 16));

	x = y = 0;
	switch (data[2]) {
	case 0x0:
		y = -127;
		break;
	case 0x1:
		y = -127;
		x = 127;
		break;
	case 0x2:
		x = 127;
		break;
	case 0x3:
		y = 127;
		x = 127;
		break;
	case 0x4:
		y = 127;
		break;
	case 0x5:
		y = 127;
		x = -127;
		break;
	case 0x6:
		x = -127;
		break;
	case 0x7:
		y = -127;
		x = -127;
		break;
	default:
		break;
	}

	FUNC3(udraw->joy_input_dev, ABS_X, x);
	FUNC3(udraw->joy_input_dev, ABS_Y, y);

	FUNC5(udraw->joy_input_dev);

	/* For pen and touchpad */
	x = y = 0;
	if (touch != TOUCH_NONE) {
		if (data[15] != 0x0F)
			x = data[15] * 256 + data[17];
		if (data[16] != 0x0F)
			y = data[16] * 256 + data[18];
	}

	if (touch == TOUCH_FINGER) {
		/* Save the last one-finger touch */
		udraw->last_one_finger_x = x;
		udraw->last_one_finger_y = y;
		udraw->last_two_finger_x = -1;
		udraw->last_two_finger_y = -1;
	} else if (touch == TOUCH_TWOFINGER) {
		/*
		 * We have a problem because x/y is the one for the
		 * second finger but we want the first finger given
		 * to user-space otherwise it'll look as if it jumped.
		 *
		 * See the udraw struct definition for why this was
		 * implemented this way.
		 */
		if (udraw->last_two_finger_x == -1) {
			/* Save the position of the 2nd finger */
			udraw->last_two_finger_x = x;
			udraw->last_two_finger_y = y;

			x = udraw->last_one_finger_x;
			y = udraw->last_one_finger_y;
		} else {
			/*
			 * Offset the 2-finger coords using the
			 * saved data from the first finger
			 */
			x = x - (udraw->last_two_finger_x
				- udraw->last_one_finger_x);
			y = y - (udraw->last_two_finger_y
				- udraw->last_one_finger_y);
		}
	}

	/* touchpad */
	if (touch == TOUCH_FINGER || touch == TOUCH_TWOFINGER) {
		FUNC4(udraw->touch_input_dev, BTN_TOUCH, 1);
		FUNC4(udraw->touch_input_dev, BTN_TOOL_FINGER,
				touch == TOUCH_FINGER);
		FUNC4(udraw->touch_input_dev, BTN_TOOL_DOUBLETAP,
				touch == TOUCH_TWOFINGER);

		FUNC3(udraw->touch_input_dev, ABS_X, x);
		FUNC3(udraw->touch_input_dev, ABS_Y, y);
	} else {
		FUNC4(udraw->touch_input_dev, BTN_TOUCH, 0);
		FUNC4(udraw->touch_input_dev, BTN_TOOL_FINGER, 0);
		FUNC4(udraw->touch_input_dev, BTN_TOOL_DOUBLETAP, 0);
	}
	FUNC5(udraw->touch_input_dev);

	/* pen */
	if (touch == TOUCH_PEN) {
		int level;

		level = FUNC0(data[13] - PRESSURE_OFFSET,
				0, MAX_PRESSURE);

		FUNC4(udraw->pen_input_dev, BTN_TOUCH, (level != 0));
		FUNC4(udraw->pen_input_dev, BTN_TOOL_PEN, 1);
		FUNC3(udraw->pen_input_dev, ABS_PRESSURE, level);
		FUNC3(udraw->pen_input_dev, ABS_X, x);
		FUNC3(udraw->pen_input_dev, ABS_Y, y);
	} else {
		FUNC4(udraw->pen_input_dev, BTN_TOUCH, 0);
		FUNC4(udraw->pen_input_dev, BTN_TOOL_PEN, 0);
		FUNC3(udraw->pen_input_dev, ABS_PRESSURE, 0);
	}
	FUNC5(udraw->pen_input_dev);

	/* accel */
	x = (data[19] + (data[20] << 8));
	x = FUNC1(x, AXIS_X);
	y = (data[21] + (data[22] << 8));
	y = FUNC1(y, AXIS_Y);
	z = (data[23] + (data[24] << 8));
	z = FUNC1(z, AXIS_Z);
	FUNC3(udraw->accel_input_dev, ABS_X, x);
	FUNC3(udraw->accel_input_dev, ABS_Y, y);
	FUNC3(udraw->accel_input_dev, ABS_Z, z);
	FUNC5(udraw->accel_input_dev);

	/* let hidraw and hiddev handle the report */
	return 0;
}