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
struct touchscreen_properties {void* swap_x_y; void* invert_y; void* invert_x; void* max_y; void* max_x; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {struct input_absinfo* absinfo; TYPE_1__ dev; } ;
struct input_absinfo {scalar_t__ minimum; int /*<<< orphan*/  maximum; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int ABS_MT_POSITION_X ; 
 unsigned int ABS_MT_POSITION_Y ; 
 unsigned int ABS_MT_PRESSURE ; 
 unsigned int ABS_PRESSURE ; 
 unsigned int ABS_X ; 
 unsigned int ABS_Y ; 
 void* FUNC0 (struct device*,char*) ; 
 void* FUNC1 (struct input_dev*,unsigned int) ; 
 void* FUNC2 (struct input_dev*,unsigned int) ; 
 void* FUNC3 (struct input_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_absinfo,struct input_absinfo) ; 
 int FUNC6 (struct device*,char*,void*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,unsigned int,unsigned int,unsigned int,unsigned int) ; 

void FUNC8(struct input_dev *input, bool multitouch,
				  struct touchscreen_properties *prop)
{
	struct device *dev = input->dev.parent;
	struct input_absinfo *absinfo;
	unsigned int axis;
	unsigned int minimum, maximum, fuzz;
	bool data_present;

	FUNC4(input);
	if (!input->absinfo)
		return;

	axis = multitouch ? ABS_MT_POSITION_X : ABS_X;
	data_present = FUNC6(dev, "touchscreen-min-x",
						FUNC3(input, axis),
						&minimum) |
		       FUNC6(dev, "touchscreen-size-x",
						FUNC2(input,
								  axis) + 1,
						&maximum) |
		       FUNC6(dev, "touchscreen-fuzz-x",
						FUNC1(input, axis),
						&fuzz);
	if (data_present)
		FUNC7(input, axis, minimum, maximum - 1, fuzz);

	axis = multitouch ? ABS_MT_POSITION_Y : ABS_Y;
	data_present = FUNC6(dev, "touchscreen-min-y",
						FUNC3(input, axis),
						&minimum) |
		       FUNC6(dev, "touchscreen-size-y",
						FUNC2(input,
								  axis) + 1,
						&maximum) |
		       FUNC6(dev, "touchscreen-fuzz-y",
						FUNC1(input, axis),
						&fuzz);
	if (data_present)
		FUNC7(input, axis, minimum, maximum - 1, fuzz);

	axis = multitouch ? ABS_MT_PRESSURE : ABS_PRESSURE;
	data_present = FUNC6(dev,
						"touchscreen-max-pressure",
						FUNC2(input, axis),
						&maximum) |
		       FUNC6(dev,
						"touchscreen-fuzz-pressure",
						FUNC1(input, axis),
						&fuzz);
	if (data_present)
		FUNC7(input, axis, 0, maximum, fuzz);

	if (!prop)
		return;

	axis = multitouch ? ABS_MT_POSITION_X : ABS_X;

	prop->max_x = FUNC2(input, axis);
	prop->max_y = FUNC2(input, axis + 1);

	prop->invert_x =
		FUNC0(dev, "touchscreen-inverted-x");
	if (prop->invert_x) {
		absinfo = &input->absinfo[axis];
		absinfo->maximum -= absinfo->minimum;
		absinfo->minimum = 0;
	}

	prop->invert_y =
		FUNC0(dev, "touchscreen-inverted-y");
	if (prop->invert_y) {
		absinfo = &input->absinfo[axis + 1];
		absinfo->maximum -= absinfo->minimum;
		absinfo->minimum = 0;
	}

	prop->swap_x_y =
		FUNC0(dev, "touchscreen-swapped-x-y");
	if (prop->swap_x_y)
		FUNC5(input->absinfo[axis], input->absinfo[axis + 1]);
}