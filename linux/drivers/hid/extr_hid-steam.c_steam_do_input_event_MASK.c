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
struct steam_device {int dummy; } ;
struct input_dev {int dummy; } ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_HAT0X ; 
 int /*<<< orphan*/  ABS_HAT0Y ; 
 int /*<<< orphan*/  ABS_HAT2X ; 
 int /*<<< orphan*/  ABS_HAT2Y ; 
 int /*<<< orphan*/  ABS_RX ; 
 int /*<<< orphan*/  ABS_RY ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_DPAD_DOWN ; 
 int /*<<< orphan*/  BTN_DPAD_LEFT ; 
 int /*<<< orphan*/  BTN_DPAD_RIGHT ; 
 int /*<<< orphan*/  BTN_DPAD_UP ; 
 int /*<<< orphan*/  BTN_GEAR_DOWN ; 
 int /*<<< orphan*/  BTN_GEAR_UP ; 
 int /*<<< orphan*/  BTN_MODE ; 
 int /*<<< orphan*/  BTN_SELECT ; 
 int /*<<< orphan*/  BTN_START ; 
 int /*<<< orphan*/  BTN_THUMB ; 
 int /*<<< orphan*/  BTN_THUMB2 ; 
 int /*<<< orphan*/  BTN_THUMBL ; 
 int /*<<< orphan*/  BTN_THUMBR ; 
 int /*<<< orphan*/  BTN_TL ; 
 int /*<<< orphan*/  BTN_TL2 ; 
 int /*<<< orphan*/  BTN_TR ; 
 int /*<<< orphan*/  BTN_TR2 ; 
 int /*<<< orphan*/  BTN_X ; 
 int /*<<< orphan*/  BTN_Y ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (int*) ; 

__attribute__((used)) static void FUNC5(struct steam_device *steam,
		struct input_dev *input, u8 *data)
{
	/* 24 bits of buttons */
	u8 b8, b9, b10;
	s16 x, y;
	bool lpad_touched, lpad_and_joy;

	b8 = data[8];
	b9 = data[9];
	b10 = data[10];

	FUNC2(input, ABS_HAT2Y, data[11]);
	FUNC2(input, ABS_HAT2X, data[12]);

	/*
	 * These two bits tells how to interpret the values X and Y.
	 * lpad_and_joy tells that the joystick and the lpad are used at the
	 * same time.
	 * lpad_touched tells whether X/Y are to be read as lpad coord or
	 * joystick values.
	 * (lpad_touched || lpad_and_joy) tells if the lpad is really touched.
	 */
	lpad_touched = b10 & FUNC0(3);
	lpad_and_joy = b10 & FUNC0(7);
	x = FUNC4(data + 16);
	y = -FUNC4(data + 18);

	FUNC2(input, lpad_touched ? ABS_HAT0X : ABS_X, x);
	FUNC2(input, lpad_touched ? ABS_HAT0Y : ABS_Y, y);
	/* Check if joystick is centered */
	if (lpad_touched && !lpad_and_joy) {
		FUNC2(input, ABS_X, 0);
		FUNC2(input, ABS_Y, 0);
	}
	/* Check if lpad is untouched */
	if (!(lpad_touched || lpad_and_joy)) {
		FUNC2(input, ABS_HAT0X, 0);
		FUNC2(input, ABS_HAT0Y, 0);
	}

	FUNC2(input, ABS_RX, FUNC4(data + 20));
	FUNC2(input, ABS_RY, -FUNC4(data + 22));

	FUNC1(input, EV_KEY, BTN_TR2, !!(b8 & FUNC0(0)));
	FUNC1(input, EV_KEY, BTN_TL2, !!(b8 & FUNC0(1)));
	FUNC1(input, EV_KEY, BTN_TR, !!(b8 & FUNC0(2)));
	FUNC1(input, EV_KEY, BTN_TL, !!(b8 & FUNC0(3)));
	FUNC1(input, EV_KEY, BTN_Y, !!(b8 & FUNC0(4)));
	FUNC1(input, EV_KEY, BTN_B, !!(b8 & FUNC0(5)));
	FUNC1(input, EV_KEY, BTN_X, !!(b8 & FUNC0(6)));
	FUNC1(input, EV_KEY, BTN_A, !!(b8 & FUNC0(7)));
	FUNC1(input, EV_KEY, BTN_SELECT, !!(b9 & FUNC0(4)));
	FUNC1(input, EV_KEY, BTN_MODE, !!(b9 & FUNC0(5)));
	FUNC1(input, EV_KEY, BTN_START, !!(b9 & FUNC0(6)));
	FUNC1(input, EV_KEY, BTN_GEAR_DOWN, !!(b9 & FUNC0(7)));
	FUNC1(input, EV_KEY, BTN_GEAR_UP, !!(b10 & FUNC0(0)));
	FUNC1(input, EV_KEY, BTN_THUMBR, !!(b10 & FUNC0(2)));
	FUNC1(input, EV_KEY, BTN_THUMBL, !!(b10 & FUNC0(6)));
	FUNC1(input, EV_KEY, BTN_THUMB, lpad_touched || lpad_and_joy);
	FUNC1(input, EV_KEY, BTN_THUMB2, !!(b10 & FUNC0(4)));
	FUNC1(input, EV_KEY, BTN_DPAD_UP, !!(b9 & FUNC0(0)));
	FUNC1(input, EV_KEY, BTN_DPAD_RIGHT, !!(b9 & FUNC0(1)));
	FUNC1(input, EV_KEY, BTN_DPAD_LEFT, !!(b9 & FUNC0(2)));
	FUNC1(input, EV_KEY, BTN_DPAD_DOWN, !!(b9 & FUNC0(3)));

	FUNC3(input);
}