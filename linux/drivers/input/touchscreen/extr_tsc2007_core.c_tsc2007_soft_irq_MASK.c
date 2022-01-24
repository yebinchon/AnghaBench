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
typedef  scalar_t__ u32 ;
struct tsc2007 {scalar_t__ max_rt; int /*<<< orphan*/  (* clear_penirq ) () ;TYPE_1__* client; int /*<<< orphan*/  poll_period; int /*<<< orphan*/  stopped; int /*<<< orphan*/  wait; int /*<<< orphan*/  get_pendown_state; int /*<<< orphan*/  mlock; struct input_dev* input; } ;
struct ts_event {scalar_t__ x; scalar_t__ y; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct tsc2007*,struct ts_event*) ; 
 scalar_t__ FUNC8 (struct tsc2007*) ; 
 int /*<<< orphan*/  FUNC9 (struct tsc2007*,struct ts_event*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *handle)
{
	struct tsc2007 *ts = handle;
	struct input_dev *input = ts->input;
	struct ts_event tc;
	u32 rt;

	while (!ts->stopped && FUNC8(ts)) {

		/* pen is down, continue with the measurement */

		FUNC4(&ts->mlock);
		FUNC9(ts, &tc);
		FUNC5(&ts->mlock);

		rt = FUNC7(ts, &tc);

		if (!rt && !ts->get_pendown_state) {
			/*
			 * If pressure reported is 0 and we don't have
			 * callback to check pendown state, we have to
			 * assume that pen was lifted up.
			 */
			break;
		}

		if (rt <= ts->max_rt) {
			FUNC0(&ts->client->dev,
				"DOWN point(%4d,%4d), resistance (%4u)\n",
				tc.x, tc.y, rt);

			rt = ts->max_rt - rt;

			FUNC2(input, BTN_TOUCH, 1);
			FUNC1(input, ABS_X, tc.x);
			FUNC1(input, ABS_Y, tc.y);
			FUNC1(input, ABS_PRESSURE, rt);

			FUNC3(input);

		} else {
			/*
			 * Sample found inconsistent by debouncing or pressure is
			 * beyond the maximum. Don't report it to user space,
			 * repeat at least once more the measurement.
			 */
			FUNC0(&ts->client->dev, "ignored pressure %d\n", rt);
		}

		FUNC10(ts->wait, ts->stopped, ts->poll_period);
	}

	FUNC0(&ts->client->dev, "UP\n");

	FUNC2(input, BTN_TOUCH, 0);
	FUNC1(input, ABS_PRESSURE, 0);
	FUNC3(input);

	if (ts->clear_penirq)
		ts->clear_penirq();

	return IRQ_HANDLED;
}