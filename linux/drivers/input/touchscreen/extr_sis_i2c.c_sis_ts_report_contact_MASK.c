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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct sis_ts_data {TYPE_1__* client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 scalar_t__ SIS_ALL_IN_ONE_PACKAGE ; 
 scalar_t__ SIS_AREA_UNIT ; 
 size_t SIS_CONTACT_HEIGHT_OFFSET ; 
 size_t SIS_CONTACT_ID_OFFSET ; 
 size_t FUNC0 (scalar_t__) ; 
 size_t SIS_CONTACT_STATUS_OFFSET ; 
 size_t SIS_CONTACT_WIDTH_OFFSET ; 
 size_t SIS_CONTACT_X_OFFSET ; 
 size_t SIS_CONTACT_Y_OFFSET ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SIS_STATUS_DOWN ; 
 scalar_t__ SIS_STATUS_UP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__ const) ; 
 scalar_t__ FUNC4 (scalar_t__ const*) ; 
 int FUNC5 (struct input_dev*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct sis_ts_data *ts, const u8 *data, u8 id)
{
	struct input_dev *input = ts->input;
	int slot;
	u8 status = data[SIS_CONTACT_STATUS_OFFSET];
	u8 pressure;
	u8 height, width;
	u16 x, y;

	if (status != SIS_STATUS_DOWN && status != SIS_STATUS_UP) {
		FUNC3(&ts->client->dev, "Unexpected touch status: %#02x\n",
			data[SIS_CONTACT_STATUS_OFFSET]);
		return -EINVAL;
	}

	slot = FUNC5(input, data[SIS_CONTACT_ID_OFFSET]);
	if (slot < 0)
		return -ENOENT;

	FUNC7(input, slot);
	FUNC6(input, MT_TOOL_FINGER,
				   status == SIS_STATUS_DOWN);

	if (status == SIS_STATUS_DOWN) {
		pressure = height = width = 1;
		if (id != SIS_ALL_IN_ONE_PACKAGE) {
			if (FUNC1(id)) {
				width = data[SIS_CONTACT_WIDTH_OFFSET];
				height = data[SIS_CONTACT_HEIGHT_OFFSET];
			}

			if (FUNC2(id))
				pressure =
					data[FUNC0(id)];
		}

		x = FUNC4(&data[SIS_CONTACT_X_OFFSET]);
		y = FUNC4(&data[SIS_CONTACT_Y_OFFSET]);

		FUNC8(input, ABS_MT_TOUCH_MAJOR,
				 width * SIS_AREA_UNIT);
		FUNC8(input, ABS_MT_TOUCH_MINOR,
				 height * SIS_AREA_UNIT);
		FUNC8(input, ABS_MT_PRESSURE, pressure);
		FUNC8(input, ABS_MT_POSITION_X, x);
		FUNC8(input, ABS_MT_POSITION_Y, y);
	}

	return 0;
}