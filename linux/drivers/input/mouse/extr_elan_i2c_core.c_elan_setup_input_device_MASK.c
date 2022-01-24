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
struct TYPE_4__ {int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; int /*<<< orphan*/  evbit; TYPE_2__ id; } ;
struct elan_tp_data {unsigned int max_x; unsigned int max_y; struct input_dev* input; int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; scalar_t__ middle_button; scalar_t__ clickpad; int /*<<< orphan*/  product_id; int /*<<< orphan*/  width_y; int /*<<< orphan*/  width_x; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int /*<<< orphan*/  ELAN_VENDOR_ID ; 
 int ENOMEM ; 
 unsigned int ETP_FINGER_WIDTH ; 
 int /*<<< orphan*/  ETP_MAX_FINGERS ; 
 unsigned int ETP_MAX_PRESSURE ; 
 int /*<<< orphan*/  EV_ABS ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct input_dev* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*,struct elan_tp_data*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct elan_tp_data *data)
{
	struct device *dev = &data->client->dev;
	struct input_dev *input;
	unsigned int max_width = FUNC7(data->width_x, data->width_y);
	unsigned int min_width = FUNC8(data->width_x, data->width_y);
	int error;

	input = FUNC2(dev);
	if (!input)
		return -ENOMEM;

	input->name = "Elan Touchpad";
	input->id.bustype = BUS_I2C;
	input->id.vendor = ELAN_VENDOR_ID;
	input->id.product = data->product_id;
	FUNC6(input, data);

	error = FUNC4(input, ETP_MAX_FINGERS,
				    INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED);
	if (error) {
		FUNC1(dev, "failed to initialize MT slots: %d\n", error);
		return error;
	}

	FUNC0(EV_ABS, input->evbit);
	FUNC0(INPUT_PROP_POINTER, input->propbit);
	if (data->clickpad) {
		FUNC0(INPUT_PROP_BUTTONPAD, input->propbit);
	} else {
		FUNC0(BTN_RIGHT, input->keybit);
		if (data->middle_button)
			FUNC0(BTN_MIDDLE, input->keybit);
	}
	FUNC0(BTN_LEFT, input->keybit);

	/* Set up ST parameters */
	FUNC5(input, ABS_X, 0, data->max_x, 0, 0);
	FUNC5(input, ABS_Y, 0, data->max_y, 0, 0);
	FUNC3(input, ABS_X, data->x_res);
	FUNC3(input, ABS_Y, data->y_res);
	FUNC5(input, ABS_PRESSURE, 0, ETP_MAX_PRESSURE, 0, 0);
	FUNC5(input, ABS_TOOL_WIDTH, 0, ETP_FINGER_WIDTH, 0, 0);
	FUNC5(input, ABS_DISTANCE, 0, 1, 0, 0);

	/* And MT parameters */
	FUNC5(input, ABS_MT_POSITION_X, 0, data->max_x, 0, 0);
	FUNC5(input, ABS_MT_POSITION_Y, 0, data->max_y, 0, 0);
	FUNC3(input, ABS_MT_POSITION_X, data->x_res);
	FUNC3(input, ABS_MT_POSITION_Y, data->y_res);
	FUNC5(input, ABS_MT_PRESSURE, 0,
			     ETP_MAX_PRESSURE, 0, 0);
	FUNC5(input, ABS_MT_TOUCH_MAJOR, 0,
			     ETP_FINGER_WIDTH * max_width, 0, 0);
	FUNC5(input, ABS_MT_TOUCH_MINOR, 0,
			     ETP_FINGER_WIDTH * min_width, 0, 0);

	data->input = input;

	return 0;
}