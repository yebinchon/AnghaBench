#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct touchscreen_data {TYPE_1__* input; struct ipaq_micro* micro; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_5__ dev; } ;
struct ipaq_micro {int dummy; } ;
struct TYPE_10__ {char* name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 struct ipaq_micro* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*) ; 
 TYPE_1__* FUNC3 (TYPE_5__*) ; 
 struct touchscreen_data* FUNC4 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct touchscreen_data*) ; 
 int /*<<< orphan*/  micro_ts_close ; 
 int /*<<< orphan*/  micro_ts_open ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct touchscreen_data*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct ipaq_micro *micro = FUNC1(pdev->dev.parent);
	struct touchscreen_data *ts;
	int error;

	ts = FUNC4(&pdev->dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	ts->micro = micro;

	ts->input = FUNC3(&pdev->dev);
	if (!ts->input) {
		FUNC0(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	ts->input->name = "ipaq micro ts";
	ts->input->open = micro_ts_open;
	ts->input->close = micro_ts_close;

	FUNC8(ts->input, ts);

	FUNC7(ts->input, EV_KEY, BTN_TOUCH);
	FUNC7(ts->input, EV_ABS, ABS_X);
	FUNC7(ts->input, EV_ABS, ABS_Y);
	FUNC6(ts->input, ABS_X, 0, 1023, 0, 0);
	FUNC6(ts->input, ABS_Y, 0, 1023, 0, 0);

	error = FUNC5(ts->input);
	if (error) {
		FUNC0(&pdev->dev, "error registering touch input\n");
		return error;
	}

	FUNC9(pdev, ts);

	FUNC2(&pdev->dev, "iPAQ micro touchscreen\n");

	return 0;
}