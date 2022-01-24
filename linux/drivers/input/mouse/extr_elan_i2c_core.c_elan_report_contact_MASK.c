#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct elan_tp_data {unsigned int max_x; unsigned int max_y; unsigned int width_x; unsigned int width_y; unsigned int pressure_adjustment; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 unsigned int ETP_FWIDTH_REDUCE ; 
 unsigned int ETP_MAX_PRESSURE ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct elan_tp_data *data,
				int contact_num, bool contact_valid,
				u8 *finger_data)
{
	struct input_dev *input = data->input;
	unsigned int pos_x, pos_y;
	unsigned int pressure, mk_x, mk_y;
	unsigned int area_x, area_y, major, minor;
	unsigned int scaled_pressure;

	if (contact_valid) {
		pos_x = ((finger_data[0] & 0xf0) << 4) |
						finger_data[1];
		pos_y = ((finger_data[0] & 0x0f) << 8) |
						finger_data[2];
		mk_x = (finger_data[3] & 0x0f);
		mk_y = (finger_data[3] >> 4);
		pressure = finger_data[4];

		if (pos_x > data->max_x || pos_y > data->max_y) {
			FUNC0(input->dev.parent,
				"[%d] x=%d y=%d over max (%d, %d)",
				contact_num, pos_x, pos_y,
				data->max_x, data->max_y);
			return;
		}

		/*
		 * To avoid treating large finger as palm, let's reduce the
		 * width x and y per trace.
		 */
		area_x = mk_x * (data->width_x - ETP_FWIDTH_REDUCE);
		area_y = mk_y * (data->width_y - ETP_FWIDTH_REDUCE);

		major = FUNC4(area_x, area_y);
		minor = FUNC5(area_x, area_y);

		scaled_pressure = pressure + data->pressure_adjustment;

		if (scaled_pressure > ETP_MAX_PRESSURE)
			scaled_pressure = ETP_MAX_PRESSURE;

		FUNC2(input, contact_num);
		FUNC1(input, MT_TOOL_FINGER, true);
		FUNC3(input, ABS_MT_POSITION_X, pos_x);
		FUNC3(input, ABS_MT_POSITION_Y, data->max_y - pos_y);
		FUNC3(input, ABS_MT_PRESSURE, scaled_pressure);
		FUNC3(input, ABS_TOOL_WIDTH, mk_x);
		FUNC3(input, ABS_MT_TOUCH_MAJOR, major);
		FUNC3(input, ABS_MT_TOUCH_MINOR, minor);
	} else {
		FUNC2(input, contact_num);
		FUNC1(input, MT_TOOL_FINGER, false);
	}
}