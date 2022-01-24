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
struct TYPE_14__ {int invert_x; int invert_y; scalar_t__ max_y; scalar_t__ max_x; } ;
struct goodix_ts_data {size_t int_trigger_type; int contact_size; int irq_flags; TYPE_2__* client; TYPE_3__* input_dev; void* max_touch_num; TYPE_4__ prop; int /*<<< orphan*/  version; int /*<<< orphan*/  id; } ;
struct TYPE_11__ {int vendor; int /*<<< orphan*/  version; int /*<<< orphan*/  product; int /*<<< orphan*/  bustype; } ;
struct TYPE_13__ {char* name; char* phys; TYPE_1__ id; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 size_t GOODIX_INT_TRIGGER ; 
 void* GOODIX_MAX_CONTACTS ; 
 scalar_t__ GOODIX_MAX_HEIGHT ; 
 scalar_t__ GOODIX_MAX_WIDTH ; 
 int INPUT_MT_DIRECT ; 
 int INPUT_MT_DROP_UNUSED ; 
 int IRQF_ONESHOT ; 
 int /*<<< orphan*/  KEY_LEFTMETA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int* goodix_irq_flags ; 
 int /*<<< orphan*/  FUNC4 (struct goodix_ts_data*) ; 
 int FUNC5 (struct goodix_ts_data*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (TYPE_3__*,void*,int) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nine_bytes_report ; 
 int /*<<< orphan*/  rotated_screen ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,TYPE_4__*) ; 

__attribute__((used)) static int FUNC12(struct goodix_ts_data *ts)
{
	int error;

	ts->int_trigger_type = GOODIX_INT_TRIGGER;
	ts->max_touch_num = GOODIX_MAX_CONTACTS;

	ts->input_dev = FUNC2(&ts->client->dev);
	if (!ts->input_dev) {
		FUNC1(&ts->client->dev, "Failed to allocate input device.");
		return -ENOMEM;
	}

	ts->input_dev->name = "Goodix Capacitive TouchScreen";
	ts->input_dev->phys = "input/ts";
	ts->input_dev->id.bustype = BUS_I2C;
	ts->input_dev->id.vendor = 0x0416;
	ts->input_dev->id.product = ts->id;
	ts->input_dev->id.version = ts->version;

	/* Capacitive Windows/Home button on some devices */
	FUNC10(ts->input_dev, EV_KEY, KEY_LEFTMETA);

	FUNC10(ts->input_dev, EV_ABS, ABS_MT_POSITION_X);
	FUNC10(ts->input_dev, EV_ABS, ABS_MT_POSITION_Y);
	FUNC9(ts->input_dev, ABS_MT_WIDTH_MAJOR, 0, 255, 0, 0);
	FUNC9(ts->input_dev, ABS_MT_TOUCH_MAJOR, 0, 255, 0, 0);

	/* Read configuration and apply touchscreen parameters */
	FUNC4(ts);

	/* Try overriding touchscreen parameters via device properties */
	FUNC11(ts->input_dev, true, &ts->prop);

	if (!ts->prop.max_x || !ts->prop.max_y || !ts->max_touch_num) {
		FUNC1(&ts->client->dev,
			"Invalid config (%d, %d, %d), using defaults\n",
			ts->prop.max_x, ts->prop.max_y, ts->max_touch_num);
		ts->prop.max_x = GOODIX_MAX_WIDTH - 1;
		ts->prop.max_y = GOODIX_MAX_HEIGHT - 1;
		ts->max_touch_num = GOODIX_MAX_CONTACTS;
		FUNC6(ts->input_dev,
				  ABS_MT_POSITION_X, ts->prop.max_x);
		FUNC6(ts->input_dev,
				  ABS_MT_POSITION_Y, ts->prop.max_y);
	}

	if (FUNC3(rotated_screen)) {
		ts->prop.invert_x = true;
		ts->prop.invert_y = true;
		FUNC0(&ts->client->dev,
			"Applying '180 degrees rotated screen' quirk\n");
	}

	if (FUNC3(nine_bytes_report)) {
		ts->contact_size = 9;

		FUNC0(&ts->client->dev,
			"Non-standard 9-bytes report format quirk\n");
	}

	error = FUNC7(ts->input_dev, ts->max_touch_num,
				    INPUT_MT_DIRECT | INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC1(&ts->client->dev,
			"Failed to initialize MT slots: %d", error);
		return error;
	}

	error = FUNC8(ts->input_dev);
	if (error) {
		FUNC1(&ts->client->dev,
			"Failed to register input device: %d", error);
		return error;
	}

	ts->irq_flags = goodix_irq_flags[ts->int_trigger_type] | IRQF_ONESHOT;
	error = FUNC5(ts);
	if (error) {
		FUNC1(&ts->client->dev, "request IRQ failed: %d\n", error);
		return error;
	}

	return 0;
}