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
struct mms114_touch {int id; int type; int x_lo; int x_hi; int y_lo; int y_hi; int /*<<< orphan*/  strength; int /*<<< orphan*/  width; int /*<<< orphan*/  pressed; } ;
struct mms114_data {int /*<<< orphan*/  props; struct input_dev* input_dev; struct i2c_client* client; } ;
struct input_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int MMS114_MAX_TOUCH ; 
 int MMS114_TYPE_TOUCHSCREEN ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ *,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void FUNC6(struct mms114_data *data, struct mms114_touch *touch)
{
	struct i2c_client *client = data->client;
	struct input_dev *input_dev = data->input_dev;
	unsigned int id;
	unsigned int x;
	unsigned int y;

	if (touch->id > MMS114_MAX_TOUCH) {
		FUNC1(&client->dev, "Wrong touch id (%d)\n", touch->id);
		return;
	}

	if (touch->type != MMS114_TYPE_TOUCHSCREEN) {
		FUNC1(&client->dev, "Wrong touch type (%d)\n", touch->type);
		return;
	}

	id = touch->id - 1;
	x = touch->x_lo | touch->x_hi << 8;
	y = touch->y_lo | touch->y_hi << 8;

	FUNC0(&client->dev,
		"id: %d, type: %d, pressed: %d, x: %d, y: %d, width: %d, strength: %d\n",
		id, touch->type, touch->pressed,
		x, y, touch->width, touch->strength);

	FUNC3(input_dev, id);
	FUNC2(input_dev, MT_TOOL_FINGER, touch->pressed);

	if (touch->pressed) {
		FUNC5(input_dev, &data->props, x, y, true);
		FUNC4(input_dev, ABS_MT_TOUCH_MAJOR, touch->width);
		FUNC4(input_dev, ABS_MT_PRESSURE, touch->strength);
	}
}