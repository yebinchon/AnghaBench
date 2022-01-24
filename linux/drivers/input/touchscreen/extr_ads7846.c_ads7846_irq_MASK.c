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
struct input_dev {int dummy; } ;
struct ads7846 {int pendown; TYPE_1__* spi; struct input_dev* input; int /*<<< orphan*/  stopped; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TS_POLL_DELAY ; 
 int /*<<< orphan*/  TS_POLL_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC1 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (struct ads7846*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *handle)
{
	struct ads7846 *ts = handle;

	/* Start with a small delay before checking pendown state */
	FUNC8(TS_POLL_DELAY);

	while (!ts->stopped && FUNC3(ts)) {

		/* pen is down, continue with the measurement */
		FUNC0(ts);

		if (!ts->stopped)
			FUNC1(ts);

		FUNC9(ts->wait, ts->stopped,
				   FUNC7(TS_POLL_PERIOD));
	}

	if (ts->pendown && !ts->stopped) {
		struct input_dev *input = ts->input;

		FUNC5(input, BTN_TOUCH, 0);
		FUNC4(input, ABS_PRESSURE, 0);
		FUNC6(input);

		ts->pendown = false;
		FUNC2(&ts->spi->dev, "UP\n");
	}

	return IRQ_HANDLED;
}