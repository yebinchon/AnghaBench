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
struct psmouse {struct fsp_data* private; struct input_dev* dev; } ;
struct input_dev {int /*<<< orphan*/  propbit; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  relbit; } ;
struct fsp_data {scalar_t__ ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_BACK ; 
 int /*<<< orphan*/  BTN_FORWARD ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_TOOL_DOUBLETAP ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_REL ; 
 scalar_t__ FSP_VER_STL3888_C0 ; 
 int /*<<< orphan*/  INPUT_PROP_SEMI_MT ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse)
{
	struct input_dev *dev = psmouse->dev;
	struct fsp_data *pad = psmouse->private;

	if (pad->ver < FSP_VER_STL3888_C0) {
		FUNC1(BTN_MIDDLE, dev->keybit);
		FUNC1(BTN_BACK, dev->keybit);
		FUNC1(BTN_FORWARD, dev->keybit);
		FUNC1(REL_WHEEL, dev->relbit);
		FUNC1(REL_HWHEEL, dev->relbit);
	} else {
		/*
		 * Hardware prior to Cx performs much better in relative mode;
		 * hence, only enable absolute coordinates output as well as
		 * multi-touch output for the newer hardware.
		 *
		 * Maximum coordinates can be computed as:
		 *
		 *	number of scanlines * 64 - 57
		 *
		 * where number of X/Y scanline lines are 16/12.
		 */
		int abs_x = 967, abs_y = 711;

		FUNC1(EV_ABS, dev->evbit);
		FUNC0(EV_REL, dev->evbit);
		FUNC1(BTN_TOUCH, dev->keybit);
		FUNC1(BTN_TOOL_FINGER, dev->keybit);
		FUNC1(BTN_TOOL_DOUBLETAP, dev->keybit);
		FUNC1(INPUT_PROP_SEMI_MT, dev->propbit);

		FUNC3(dev, ABS_X, 0, abs_x, 0, 0);
		FUNC3(dev, ABS_Y, 0, abs_y, 0, 0);
		FUNC2(dev, 2, 0);
		FUNC3(dev, ABS_MT_POSITION_X, 0, abs_x, 0, 0);
		FUNC3(dev, ABS_MT_POSITION_Y, 0, abs_y, 0, 0);
	}

	return 0;
}