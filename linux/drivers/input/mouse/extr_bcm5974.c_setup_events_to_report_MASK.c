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
struct input_dev {int /*<<< orphan*/  propbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; } ;
struct bcm5974_config {int caps; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  o; int /*<<< orphan*/  w; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MINOR ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_TOOL_WIDTH ; 
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int HAS_INTEGRATED_BUTTON ; 
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_POINTER ; 
 int INPUT_MT_TRACK ; 
 int /*<<< orphan*/  INPUT_PROP_BUTTONPAD ; 
 int /*<<< orphan*/  MAX_FINGERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input_dev,
				   const struct bcm5974_config *cfg)
{
	FUNC0(EV_ABS, input_dev->evbit);

	/* for synaptics only */
	FUNC2(input_dev, ABS_PRESSURE, 0, 256, 5, 0);
	FUNC2(input_dev, ABS_TOOL_WIDTH, 0, 16, 0, 0);

	/* finger touch area */
	FUNC3(input_dev, ABS_MT_TOUCH_MAJOR, &cfg->w);
	FUNC3(input_dev, ABS_MT_TOUCH_MINOR, &cfg->w);
	/* finger approach area */
	FUNC3(input_dev, ABS_MT_WIDTH_MAJOR, &cfg->w);
	FUNC3(input_dev, ABS_MT_WIDTH_MINOR, &cfg->w);
	/* finger orientation */
	FUNC3(input_dev, ABS_MT_ORIENTATION, &cfg->o);
	/* finger position */
	FUNC3(input_dev, ABS_MT_POSITION_X, &cfg->x);
	FUNC3(input_dev, ABS_MT_POSITION_Y, &cfg->y);

	FUNC0(EV_KEY, input_dev->evbit);
	FUNC0(BTN_LEFT, input_dev->keybit);

	if (cfg->caps & HAS_INTEGRATED_BUTTON)
		FUNC0(INPUT_PROP_BUTTONPAD, input_dev->propbit);

	FUNC1(input_dev, MAX_FINGERS,
		INPUT_MT_POINTER | INPUT_MT_DROP_UNUSED | INPUT_MT_TRACK);
}