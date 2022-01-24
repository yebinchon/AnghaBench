#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_2__* shared; TYPE_1__ features; struct input_dev* touch_input; } ;
struct input_dev {int dummy; } ;
struct TYPE_4__ {int touch_down; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 unsigned char FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,unsigned char) ; 
 scalar_t__ FUNC6 (struct wacom_wac*) ; 

__attribute__((used)) static int FUNC7(struct wacom_wac *wacom,
		unsigned char *data)
{
	struct input_dev *input = wacom->touch_input;
	unsigned char *finger_data, prefix;
	unsigned id;
	int x, y;
	bool valid;

	prefix = data[0];

	for (id = 0; id < wacom->features.touch_max; id++) {
		valid = !!(prefix & FUNC0(id)) &&
			FUNC6(wacom);

		FUNC2(input, id);
		FUNC1(input, MT_TOOL_FINGER, valid);

		if (!valid)
			continue;

		finger_data = data + 1 + id * 3;
		x = finger_data[0] | ((finger_data[1] & 0x0f) << 8);
		y = (finger_data[2] << 4) | (finger_data[1] >> 4);

		FUNC4(input, ABS_MT_POSITION_X, x);
		FUNC4(input, ABS_MT_POSITION_Y, y);
	}

	FUNC3(input);

	FUNC5(input, BTN_LEFT, prefix & 0x40);
	FUNC5(input, BTN_RIGHT, prefix & 0x80);

	/* keep touch state for pen event */
	wacom->shared->touch_down = !!prefix && FUNC6(wacom);

	return 1;
}