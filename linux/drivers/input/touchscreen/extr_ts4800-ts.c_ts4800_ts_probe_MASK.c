#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ts4800_ts {int /*<<< orphan*/  phys; int /*<<< orphan*/ * dev; struct input_polled_dev* poll_dev; int /*<<< orphan*/  base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct input_polled_dev {TYPE_1__* input; int /*<<< orphan*/  poll; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  poll_interval; struct ts4800_ts* private; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_12BIT ; 
 int /*<<< orphan*/  POLL_INTERVAL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 struct input_polled_dev* FUNC4 (int /*<<< orphan*/ *) ; 
 struct ts4800_ts* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct input_polled_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int FUNC11 (struct platform_device*,struct ts4800_ts*) ; 
 int /*<<< orphan*/  ts4800_ts_close ; 
 int /*<<< orphan*/  ts4800_ts_open ; 
 int /*<<< orphan*/  ts4800_ts_poll ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct input_polled_dev *poll_dev;
	struct ts4800_ts *ts;
	int error;

	ts = FUNC5(&pdev->dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	error = FUNC11(pdev, ts);
	if (error)
		return error;

	ts->base = FUNC6(pdev, 0);
	if (FUNC0(ts->base))
		return FUNC1(ts->base);

	poll_dev = FUNC4(&pdev->dev);
	if (!poll_dev)
		return -ENOMEM;

	FUNC10(ts->phys, sizeof(ts->phys), "%s/input0", FUNC3(&pdev->dev));
	ts->poll_dev = poll_dev;
	ts->dev = &pdev->dev;

	poll_dev->private = ts;
	poll_dev->poll_interval = POLL_INTERVAL;
	poll_dev->open = ts4800_ts_open;
	poll_dev->close = ts4800_ts_close;
	poll_dev->poll = ts4800_ts_poll;

	poll_dev->input->name = "TS-4800 Touchscreen";
	poll_dev->input->phys = ts->phys;

	FUNC9(poll_dev->input, EV_KEY, BTN_TOUCH);
	FUNC8(poll_dev->input, ABS_X, 0, MAX_12BIT, 0, 0);
	FUNC8(poll_dev->input, ABS_Y, 0, MAX_12BIT, 0, 0);

	error = FUNC7(poll_dev);
	if (error) {
		FUNC2(&pdev->dev,
			"Unabled to register polled input device (%d)\n",
			error);
		return error;
	}

	return 0;
}