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
struct psmouse {struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  propbit; int /*<<< orphan*/  evbit; } ;
struct elantech_device_info {unsigned int x_min; unsigned int y_min; unsigned int x_max; unsigned int y_max; unsigned int width; int hw_version; int fw_version; int* capabilities; int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; int /*<<< orphan*/  reports_pressure; scalar_t__ has_middle_button; } ;
struct elantech_data {unsigned int y_max; unsigned int width; struct elantech_device_info info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOOL_QUADTAP ; 
 int /*<<< orphan*/  BTN_TOOL_TRIPLETAP ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ETP_CAP_HAS_ROCKER ; 
 int ETP_MAX_FINGERS ; 
 unsigned int ETP_PMAX_V2 ; 
 unsigned int ETP_PMIN_V2 ; 
 unsigned int ETP_WMAX_V2 ; 
 unsigned int ETP_WMIN_V2 ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  INPUT_MT_SEMI_MT ; 
 int /*<<< orphan*/  INPUT_PROP_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_SEMI_MT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct elantech_data *etd = psmouse->private;
	struct elantech_device_info *info = &etd->info;
	unsigned int x_min = info->x_min, y_min = info->y_min,
		     x_max = info->x_max, y_max = info->y_max,
		     width = info->width;

	FUNC1(INPUT_PROP_POINTER, dev->propbit);
	FUNC1(EV_KEY, dev->evbit);
	FUNC1(EV_ABS, dev->evbit);
	FUNC0(EV_REL, dev->evbit);

	FUNC1(BTN_LEFT, dev->keybit);
	if (info->has_middle_button)
		FUNC1(BTN_MIDDLE, dev->keybit);
	FUNC1(BTN_RIGHT, dev->keybit);

	FUNC1(BTN_TOUCH, dev->keybit);
	FUNC1(BTN_TOOL_FINGER, dev->keybit);
	FUNC1(BTN_TOOL_DOUBLETAP, dev->keybit);
	FUNC1(BTN_TOOL_TRIPLETAP, dev->keybit);

	switch (info->hw_version) {
	case 1:
		/* Rocker button */
		if (info->fw_version < 0x020000 &&
		    (info->capabilities[0] & ETP_CAP_HAS_ROCKER)) {
			FUNC1(BTN_FORWARD, dev->keybit);
			FUNC1(BTN_BACK, dev->keybit);
		}
		FUNC5(dev, ABS_X, x_min, x_max, 0, 0);
		FUNC5(dev, ABS_Y, y_min, y_max, 0, 0);
		break;

	case 2:
		FUNC1(BTN_TOOL_QUADTAP, dev->keybit);
		FUNC1(INPUT_PROP_SEMI_MT, dev->propbit);
		/* fall through */
	case 3:
		if (info->hw_version == 3)
			FUNC2(psmouse);
		FUNC5(dev, ABS_X, x_min, x_max, 0, 0);
		FUNC5(dev, ABS_Y, y_min, y_max, 0, 0);
		if (info->reports_pressure) {
			FUNC5(dev, ABS_PRESSURE, ETP_PMIN_V2,
					     ETP_PMAX_V2, 0, 0);
			FUNC5(dev, ABS_TOOL_WIDTH, ETP_WMIN_V2,
					     ETP_WMAX_V2, 0, 0);
		}
		FUNC4(dev, 2, INPUT_MT_SEMI_MT);
		FUNC5(dev, ABS_MT_POSITION_X, x_min, x_max, 0, 0);
		FUNC5(dev, ABS_MT_POSITION_Y, y_min, y_max, 0, 0);
		break;

	case 4:
		FUNC2(psmouse);
		FUNC1(BTN_TOOL_QUADTAP, dev->keybit);
		/* For X to recognize me as touchpad. */
		FUNC5(dev, ABS_X, x_min, x_max, 0, 0);
		FUNC5(dev, ABS_Y, y_min, y_max, 0, 0);
		/*
		 * range of pressure and width is the same as v2,
		 * report ABS_PRESSURE, ABS_TOOL_WIDTH for compatibility.
		 */
		FUNC5(dev, ABS_PRESSURE, ETP_PMIN_V2,
				     ETP_PMAX_V2, 0, 0);
		FUNC5(dev, ABS_TOOL_WIDTH, ETP_WMIN_V2,
				     ETP_WMAX_V2, 0, 0);
		/* Multitouch capable pad, up to 5 fingers. */
		FUNC4(dev, ETP_MAX_FINGERS, 0);
		FUNC5(dev, ABS_MT_POSITION_X, x_min, x_max, 0, 0);
		FUNC5(dev, ABS_MT_POSITION_Y, y_min, y_max, 0, 0);
		FUNC5(dev, ABS_MT_PRESSURE, ETP_PMIN_V2,
				     ETP_PMAX_V2, 0, 0);
		/*
		 * The firmware reports how many trace lines the finger spans,
		 * convert to surface unit as Protocol-B requires.
		 */
		FUNC5(dev, ABS_MT_TOUCH_MAJOR, 0,
				     ETP_WMAX_V2 * width, 0, 0);
		break;
	}

	FUNC3(dev, ABS_X, info->x_res);
	FUNC3(dev, ABS_Y, info->y_res);
	if (info->hw_version > 1) {
		FUNC3(dev, ABS_MT_POSITION_X, info->x_res);
		FUNC3(dev, ABS_MT_POSITION_Y, info->y_res);
	}

	etd->y_max = y_max;
	etd->width = width;

	return 0;
}