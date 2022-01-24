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
struct input_dev {int dummy; } ;
struct cyapa_touch {int id; int xy_hi; int x_lo; int y_lo; int pressure; } ;
struct cyapa_reg_data {int finger_btn; struct cyapa_touch* touches; } ;
struct cyapa {int btn_capability; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int CAPABILITY_LEFT_BTN_MASK ; 
 int CAPABILITY_MIDDLE_BTN_MASK ; 
 int CAPABILITY_RIGHT_BTN_MASK ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int OP_DATA_LEFT_BTN ; 
 int OP_DATA_MIDDLE_BTN ; 
 int OP_DATA_RIGHT_BTN ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 

__attribute__((used)) static int FUNC6(struct cyapa *cyapa,
				    struct cyapa_reg_data *data)
{
	struct input_dev *input = cyapa->input;
	int num_fingers;
	int i;

	num_fingers = (data->finger_btn >> 4) & 0x0f;
	for (i = 0; i < num_fingers; i++) {
		const struct cyapa_touch *touch = &data->touches[i];
		/* Note: touch->id range is 1 to 15; slots are 0 to 14. */
		int slot = touch->id - 1;

		FUNC1(input, slot);
		FUNC0(input, MT_TOOL_FINGER, true);
		FUNC3(input, ABS_MT_POSITION_X,
				 ((touch->xy_hi & 0xf0) << 4) | touch->x_lo);
		FUNC3(input, ABS_MT_POSITION_Y,
				 ((touch->xy_hi & 0x0f) << 8) | touch->y_lo);
		FUNC3(input, ABS_MT_PRESSURE, touch->pressure);
	}

	FUNC2(input);

	if (cyapa->btn_capability & CAPABILITY_LEFT_BTN_MASK)
		FUNC4(input, BTN_LEFT,
				 !!(data->finger_btn & OP_DATA_LEFT_BTN));
	if (cyapa->btn_capability & CAPABILITY_MIDDLE_BTN_MASK)
		FUNC4(input, BTN_MIDDLE,
				 !!(data->finger_btn & OP_DATA_MIDDLE_BTN));
	if (cyapa->btn_capability & CAPABILITY_RIGHT_BTN_MASK)
		FUNC4(input, BTN_RIGHT,
				 !!(data->finger_btn & OP_DATA_RIGHT_BTN));
	FUNC5(input);

	return 0;
}