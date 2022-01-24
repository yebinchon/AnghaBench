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
struct synaptics_i2c {int /*<<< orphan*/  client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
typedef  int s8 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  DATA_REG0 ; 
 int GESTURE ; 
 int REGISTER_LENGTH ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_X_REG ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct synaptics_i2c *touch)
{
	struct input_dev *input = touch->input;
	int xy_delta, gesture;
	s32 data;
	s8 x_delta, y_delta;

	/* Deal with spontaneous resets and errors */
	if (FUNC3(touch->client))
		return false;

	/* Get Gesture Bit */
	data = FUNC4(touch->client, DATA_REG0);
	gesture = (data >> GESTURE) & 0x1;

	/*
	 * Get Relative axes. we have to get them in one shot,
	 * so we get 2 bytes starting from REL_X_REG.
	 */
	xy_delta = FUNC5(touch->client, REL_X_REG) & 0xffff;

	/* Separate X from Y */
	x_delta = xy_delta & 0xff;
	y_delta = (xy_delta >> REGISTER_LENGTH) & 0xff;

	/* Report the button event */
	FUNC0(input, BTN_LEFT, gesture);

	/* Report the deltas */
	FUNC1(input, REL_X, x_delta);
	FUNC1(input, REL_Y, -y_delta);
	FUNC2(input);

	return xy_delta || gesture;
}