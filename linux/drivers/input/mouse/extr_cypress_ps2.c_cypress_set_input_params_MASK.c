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
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  relbit; int /*<<< orphan*/  propbit; } ;
struct cytp_data {int tp_max_abs_x; int tp_max_abs_y; int tp_max_pressure; int /*<<< orphan*/  tp_res_y; int /*<<< orphan*/  tp_res_x; int /*<<< orphan*/  tp_min_pressure; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_QUADTAP ; 
 int /*<<< orphan*/  BTN_TOOL_QUINTTAP ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  CYTP_MAX_MT_SLOTS ; 
 int EINVAL ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_TRACK ; 
 int /*<<< orphan*/  INPUT_PROP_SEMI_MT ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct input_dev *input,
				    struct cytp_data *cytp)
{
	int ret;

	if (!cytp->tp_res_x || !cytp->tp_res_y)
		return -EINVAL;

	FUNC1(EV_ABS, input->evbit);
	FUNC4(input, ABS_X, 0, cytp->tp_max_abs_x, 0, 0);
	FUNC4(input, ABS_Y, 0, cytp->tp_max_abs_y, 0, 0);
	FUNC4(input, ABS_PRESSURE,
			     cytp->tp_min_pressure, cytp->tp_max_pressure, 0, 0);
	FUNC4(input, ABS_TOOL_WIDTH, 0, 255, 0, 0);

	/* finger position */
	FUNC4(input, ABS_MT_POSITION_X, 0, cytp->tp_max_abs_x, 0, 0);
	FUNC4(input, ABS_MT_POSITION_Y, 0, cytp->tp_max_abs_y, 0, 0);
	FUNC4(input, ABS_MT_PRESSURE, 0, 255, 0, 0);

	ret = FUNC3(input, CYTP_MAX_MT_SLOTS,
			INPUT_MT_DROP_UNUSED|INPUT_MT_TRACK);
	if (ret < 0)
		return ret;

	FUNC1(INPUT_PROP_SEMI_MT, input->propbit);

	FUNC2(input, ABS_X, cytp->tp_res_x);
	FUNC2(input, ABS_Y, cytp->tp_res_y);

	FUNC2(input, ABS_MT_POSITION_X, cytp->tp_res_x);
	FUNC2(input, ABS_MT_POSITION_Y, cytp->tp_res_y);

	FUNC1(BTN_TOUCH, input->keybit);
	FUNC1(BTN_TOOL_FINGER, input->keybit);
	FUNC1(BTN_TOOL_DOUBLETAP, input->keybit);
	FUNC1(BTN_TOOL_TRIPLETAP, input->keybit);
	FUNC1(BTN_TOOL_QUADTAP, input->keybit);
	FUNC1(BTN_TOOL_QUINTTAP, input->keybit);

	FUNC0(EV_REL, input->evbit);
	FUNC0(REL_X, input->relbit);
	FUNC0(REL_Y, input->relbit);

	FUNC1(EV_KEY, input->evbit);
	FUNC1(BTN_LEFT, input->keybit);
	FUNC1(BTN_RIGHT, input->keybit);
	FUNC1(BTN_MIDDLE, input->keybit);

	return 0;
}