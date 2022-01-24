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
struct TYPE_2__ {scalar_t__ pressure; scalar_t__ x; scalar_t__ y; } ;
struct tps6507x_ts {scalar_t__ min_pressure; int pendown; TYPE_1__ tc; int /*<<< orphan*/  dev; } ;
struct input_polled_dev {struct input_dev* input; struct tps6507x_ts* private; } ;
struct input_dev {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  TPS6507X_TSCMODE_PRESSURE ; 
 int /*<<< orphan*/  TPS6507X_TSCMODE_X_POSITION ; 
 int /*<<< orphan*/  TPS6507X_TSCMODE_Y_POSITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 scalar_t__ FUNC4 (struct tps6507x_ts*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct tps6507x_ts*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct input_polled_dev *poll_dev)
{
	struct tps6507x_ts *tsc = poll_dev->private;
	struct input_dev *input_dev = poll_dev->input;
	bool pendown;
	s32 ret;

	ret = FUNC4(tsc, TPS6507X_TSCMODE_PRESSURE,
				      &tsc->tc.pressure);
	if (ret)
		goto done;

	pendown = tsc->tc.pressure > tsc->min_pressure;

	if (FUNC6(!pendown && tsc->pendown)) {
		FUNC0(tsc->dev, "UP\n");
		FUNC2(input_dev, BTN_TOUCH, 0);
		FUNC1(input_dev, ABS_PRESSURE, 0);
		FUNC3(input_dev);
		tsc->pendown = false;
	}

	if (pendown) {

		if (!tsc->pendown) {
			FUNC0(tsc->dev, "DOWN\n");
			FUNC2(input_dev, BTN_TOUCH, 1);
		} else
			FUNC0(tsc->dev, "still down\n");

		ret =  FUNC4(tsc, TPS6507X_TSCMODE_X_POSITION,
					       &tsc->tc.x);
		if (ret)
			goto done;

		ret =  FUNC4(tsc, TPS6507X_TSCMODE_Y_POSITION,
					       &tsc->tc.y);
		if (ret)
			goto done;

		FUNC1(input_dev, ABS_X, tsc->tc.x);
		FUNC1(input_dev, ABS_Y, tsc->tc.y);
		FUNC1(input_dev, ABS_PRESSURE, tsc->tc.pressure);
		FUNC3(input_dev);
		tsc->pendown = true;
	}

done:
	FUNC5(tsc);
}