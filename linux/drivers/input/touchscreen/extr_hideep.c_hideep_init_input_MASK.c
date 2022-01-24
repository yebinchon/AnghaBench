#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ max_x; scalar_t__ max_y; } ;
struct hideep_ts {int key_num; TYPE_3__* input_dev; int /*<<< orphan*/ * key_codes; TYPE_4__ prop; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_13__ {int keycodesize; int keycodemax; int /*<<< orphan*/ * keycode; TYPE_2__ id; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOOL_TYPE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int HIDEEP_KEY_MAX ; 
 int /*<<< orphan*/  HIDEEP_MT_MAX ; 
 int /*<<< orphan*/  HIDEEP_TS_NAME ; 
 int /*<<< orphan*/  INPUT_MT_DIRECT ; 
 int MT_TOOL_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,char*,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC4 (struct device*) ; 
 int FUNC5 (struct hideep_ts*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct hideep_ts*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,TYPE_4__*) ; 

__attribute__((used)) static int FUNC12(struct hideep_ts *ts)
{
	struct device *dev = &ts->client->dev;
	int i;
	int error;

	ts->input_dev = FUNC4(dev);
	if (!ts->input_dev) {
		FUNC1(dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	ts->input_dev->name = HIDEEP_TS_NAME;
	ts->input_dev->id.bustype = BUS_I2C;
	FUNC10(ts->input_dev, ts);

	FUNC9(ts->input_dev, EV_ABS, ABS_MT_POSITION_X);
	FUNC9(ts->input_dev, EV_ABS, ABS_MT_POSITION_Y);
	FUNC8(ts->input_dev, ABS_MT_PRESSURE, 0, 65535, 0, 0);
	FUNC8(ts->input_dev, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);
	FUNC8(ts->input_dev, ABS_MT_TOOL_TYPE,
			     0, MT_TOOL_MAX, 0, 0);
	FUNC11(ts->input_dev, true, &ts->prop);

	if (ts->prop.max_x == 0 || ts->prop.max_y == 0) {
		error = FUNC5(ts);
		if (error)
			return error;
	}

	error = FUNC6(ts->input_dev, HIDEEP_MT_MAX,
				    INPUT_MT_DIRECT);
	if (error)
		return error;

	ts->key_num = FUNC2(dev, "linux,keycodes");
	if (ts->key_num > HIDEEP_KEY_MAX) {
		FUNC1(dev, "too many keys defined: %d\n",
			ts->key_num);
		return -EINVAL;
	}

	if (ts->key_num <= 0) {
		FUNC0(dev,
			"missing or malformed 'linux,keycodes' property\n");
	} else {
		error = FUNC3(dev, "linux,keycodes",
						       ts->key_codes,
						       ts->key_num);
		if (error) {
			FUNC0(dev, "failed to read keymap: %d", error);
			return error;
		}

		if (ts->key_num) {
			ts->input_dev->keycode = ts->key_codes;
			ts->input_dev->keycodesize = sizeof(ts->key_codes[0]);
			ts->input_dev->keycodemax = ts->key_num;

			for (i = 0; i < ts->key_num; i++)
				FUNC9(ts->input_dev, EV_KEY,
					ts->key_codes[i]);
		}
	}

	error = FUNC7(ts->input_dev);
	if (error) {
		FUNC1(dev, "failed to register input device: %d", error);
		return error;
	}

	return 0;
}