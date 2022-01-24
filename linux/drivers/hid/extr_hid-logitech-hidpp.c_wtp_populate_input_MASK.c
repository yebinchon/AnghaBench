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
struct wtp_data {int x_size; int y_size; int /*<<< orphan*/  maxcontacts; int /*<<< orphan*/  resolution; } ;
struct input_dev {int /*<<< orphan*/  propbit; int /*<<< orphan*/  evbit; } ;
struct hidpp_device {int quirks; struct wtp_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_LED ; 
 int /*<<< orphan*/  EV_REL ; 
 int HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_POINTER ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hidpp_device *hidpp,
			       struct input_dev *input_dev)
{
	struct wtp_data *wd = hidpp->private_data;

	FUNC1(EV_ABS, input_dev->evbit);
	FUNC1(EV_KEY, input_dev->evbit);
	FUNC0(EV_REL, input_dev->evbit);
	FUNC0(EV_LED, input_dev->evbit);

	FUNC4(input_dev, ABS_MT_POSITION_X, 0, wd->x_size, 0, 0);
	FUNC2(input_dev, ABS_MT_POSITION_X, wd->resolution);
	FUNC4(input_dev, ABS_MT_POSITION_Y, 0, wd->y_size, 0, 0);
	FUNC2(input_dev, ABS_MT_POSITION_Y, wd->resolution);

	/* Max pressure is not given by the devices, pick one */
	FUNC4(input_dev, ABS_MT_PRESSURE, 0, 50, 0, 0);

	FUNC5(input_dev, EV_KEY, BTN_LEFT);

	if (hidpp->quirks & HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS)
		FUNC5(input_dev, EV_KEY, BTN_RIGHT);
	else
		FUNC1(INPUT_PROP_BUTTONPAD, input_dev->propbit);

	FUNC3(input_dev, wd->maxcontacts, INPUT_MT_POINTER |
		INPUT_MT_DROP_UNUSED);
}