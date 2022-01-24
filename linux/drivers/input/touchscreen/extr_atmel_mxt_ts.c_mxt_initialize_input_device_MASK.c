#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mxt_data {int multitouch; unsigned int num_touchids; int max_x; int max_y; struct input_dev* input_dev; scalar_t__ t100_aux_vect; scalar_t__ t100_aux_ampl; scalar_t__ t100_aux_area; scalar_t__ t19_num_keys; int /*<<< orphan*/  phys; scalar_t__ xy_switch; scalar_t__ T9_reportid_min; scalar_t__ T9_reportid_max; TYPE_1__* client; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_5__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_3__ dev; TYPE_2__ id; int /*<<< orphan*/  phys; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_DISTANCE ; 
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOOL_TYPE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 unsigned int INPUT_MT_DIRECT ; 
 unsigned int INPUT_MT_POINTER ; 
 int MT_TOOL_MAX ; 
 int /*<<< orphan*/  MXT_DISTANCE_ACTIVE_TOUCH ; 
 int MXT_DISTANCE_HOVERING ; 
 int MXT_MAX_AREA ; 
#define  MXT_TOUCH_MULTITOUCHSCREEN_T100 129 
#define  MXT_TOUCH_MULTI_T9 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct input_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int FUNC5 (struct input_dev*,unsigned int,unsigned int) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct input_dev*,struct mxt_data*) ; 
 int /*<<< orphan*/  mxt_input_close ; 
 int /*<<< orphan*/  mxt_input_open ; 
 int FUNC10 (struct mxt_data*) ; 
 int FUNC11 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct input_dev*,struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct mxt_data *data)
{
	struct device *dev = &data->client->dev;
	struct input_dev *input_dev;
	int error;
	unsigned int num_mt_slots;
	unsigned int mt_flags = 0;

	switch (data->multitouch) {
	case MXT_TOUCH_MULTI_T9:
		num_mt_slots = data->T9_reportid_max - data->T9_reportid_min + 1;
		error = FUNC11(data);
		if (error)
			FUNC2(dev, "Failed to initialize T9 resolution\n");
		break;

	case MXT_TOUCH_MULTITOUCHSCREEN_T100:
		num_mt_slots = data->num_touchids;
		error = FUNC10(data);
		if (error)
			FUNC2(dev, "Failed to read T100 config\n");
		break;

	default:
		FUNC0(dev, "Invalid multitouch object\n");
		return -EINVAL;
	}

	/* Handle default values and orientation switch */
	if (data->max_x == 0)
		data->max_x = 1023;

	if (data->max_y == 0)
		data->max_y = 1023;

	if (data->xy_switch)
		FUNC13(data->max_x, data->max_y);

	FUNC1(dev, "Touchscreen size X%uY%u\n", data->max_x, data->max_y);

	/* Register input device */
	input_dev = FUNC3();
	if (!input_dev)
		return -ENOMEM;

	input_dev->name = "Atmel maXTouch Touchscreen";
	input_dev->phys = data->phys;
	input_dev->id.bustype = BUS_I2C;
	input_dev->dev.parent = dev;
	input_dev->open = mxt_input_open;
	input_dev->close = mxt_input_close;

	FUNC8(input_dev, EV_KEY, BTN_TOUCH);

	/* For single touch */
	FUNC7(input_dev, ABS_X, 0, data->max_x, 0, 0);
	FUNC7(input_dev, ABS_Y, 0, data->max_y, 0, 0);

	if (data->multitouch == MXT_TOUCH_MULTI_T9 ||
	    (data->multitouch == MXT_TOUCH_MULTITOUCHSCREEN_T100 &&
	     data->t100_aux_ampl)) {
		FUNC7(input_dev, ABS_PRESSURE, 0, 255, 0, 0);
	}

	/* If device has buttons we assume it is a touchpad */
	if (data->t19_num_keys) {
		FUNC12(input_dev, data);
		mt_flags |= INPUT_MT_POINTER;
	} else {
		mt_flags |= INPUT_MT_DIRECT;
	}

	/* For multi touch */
	error = FUNC5(input_dev, num_mt_slots, mt_flags);
	if (error) {
		FUNC0(dev, "Error %d initialising slots\n", error);
		goto err_free_mem;
	}

	if (data->multitouch == MXT_TOUCH_MULTITOUCHSCREEN_T100) {
		FUNC7(input_dev, ABS_MT_TOOL_TYPE,
				     0, MT_TOOL_MAX, 0, 0);
		FUNC7(input_dev, ABS_MT_DISTANCE,
				     MXT_DISTANCE_ACTIVE_TOUCH,
				     MXT_DISTANCE_HOVERING,
				     0, 0);
	}

	FUNC7(input_dev, ABS_MT_POSITION_X,
			     0, data->max_x, 0, 0);
	FUNC7(input_dev, ABS_MT_POSITION_Y,
			     0, data->max_y, 0, 0);

	if (data->multitouch == MXT_TOUCH_MULTI_T9 ||
	    (data->multitouch == MXT_TOUCH_MULTITOUCHSCREEN_T100 &&
	     data->t100_aux_area)) {
		FUNC7(input_dev, ABS_MT_TOUCH_MAJOR,
				     0, MXT_MAX_AREA, 0, 0);
	}

	if (data->multitouch == MXT_TOUCH_MULTI_T9 ||
	    (data->multitouch == MXT_TOUCH_MULTITOUCHSCREEN_T100 &&
	     data->t100_aux_ampl)) {
		FUNC7(input_dev, ABS_MT_PRESSURE,
				     0, 255, 0, 0);
	}

	if (data->multitouch == MXT_TOUCH_MULTITOUCHSCREEN_T100 &&
	    data->t100_aux_vect) {
		FUNC7(input_dev, ABS_MT_ORIENTATION,
				     0, 255, 0, 0);
	}

	if (data->multitouch == MXT_TOUCH_MULTITOUCHSCREEN_T100 &&
	    data->t100_aux_vect) {
		FUNC7(input_dev, ABS_MT_ORIENTATION,
				     0, 255, 0, 0);
	}

	FUNC9(input_dev, data);

	error = FUNC6(input_dev);
	if (error) {
		FUNC0(dev, "Error %d registering input device\n", error);
		goto err_free_mem;
	}

	data->input_dev = input_dev;

	return 0;

err_free_mem:
	FUNC4(input_dev);
	return error;
}