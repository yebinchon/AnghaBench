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
typedef  unsigned int const u8 ;
struct input_mt_pos {scalar_t__ y; scalar_t__ x; } ;
struct input_dev {int dummy; } ;
struct bu21013_ts {int /*<<< orphan*/  props; struct input_dev* in_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 unsigned int const BU21013_SENSORS_EN_0_7 ; 
 unsigned int const BU21013_SENSORS_EN_16_23 ; 
 unsigned int const BU21013_SENSORS_EN_8_15 ; 
 scalar_t__ DELTA_MIN ; 
 int EINVAL ; 
 int LENGTH_OF_BUFFER ; 
 unsigned int const MASK_BITS ; 
 int MAX_FINGERS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 unsigned int const SHIFT_2 ; 
 unsigned int const SHIFT_8 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct bu21013_ts*,unsigned int const*) ; 
 int FUNC2 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int*,struct input_mt_pos*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct input_mt_pos*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct bu21013_ts *ts)
{
	struct input_dev *input = ts->in_dev;
	struct input_mt_pos pos[MAX_FINGERS];
	int slots[MAX_FINGERS];
	u8 buf[LENGTH_OF_BUFFER];
	bool has_x_sensors, has_y_sensors;
	int finger_down_count = 0;
	int i;

	if (FUNC1(ts, buf) < 0)
		return -EINVAL;

	has_x_sensors = FUNC2(buf[0] & BU21013_SENSORS_EN_0_7);
	has_y_sensors = FUNC2(((buf[1] & BU21013_SENSORS_EN_8_15) |
		((buf[2] & BU21013_SENSORS_EN_16_23) << SHIFT_8)) >> SHIFT_2);
	if (!has_x_sensors || !has_y_sensors)
		return 0;

	for (i = 0; i < MAX_FINGERS; i++) {
		const u8 *data = &buf[4 * i + 3];
		unsigned int x, y;

		x = data[0] << SHIFT_2 | (data[1] & MASK_BITS);
		y = data[2] << SHIFT_2 | (data[3] & MASK_BITS);
		if (x != 0 && y != 0)
			FUNC9(&pos[finger_down_count++],
					       &ts->props, x, y);
	}

	if (finger_down_count == 2 &&
	    (FUNC0(pos[0].x - pos[1].x) < DELTA_MIN ||
	     FUNC0(pos[0].y - pos[1].y) < DELTA_MIN)) {
		return 0;
	}

	FUNC3(input, slots, pos, finger_down_count, DELTA_MIN);
	for (i = 0; i < finger_down_count; i++) {
		FUNC5(input, slots[i]);
		FUNC4(input, MT_TOOL_FINGER, true);
		FUNC7(input, ABS_MT_POSITION_X, pos[i].x);
		FUNC7(input, ABS_MT_POSITION_Y, pos[i].y);
	}

	FUNC6(input);
	FUNC8(input);

	return 0;
}