#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  absbit; TYPE_2__ dev; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  name; } ;
struct da9034_touch_pdata {int interval_ms; int /*<<< orphan*/  y_inverted; int /*<<< orphan*/  x_inverted; } ;
struct TYPE_7__ {int /*<<< orphan*/  notifier_call; } ;
struct da9034_touch {int interval_ms; struct input_dev* input_dev; TYPE_1__ notifier; int /*<<< orphan*/  tsi_work; int /*<<< orphan*/  y_inverted; int /*<<< orphan*/  x_inverted; int /*<<< orphan*/  da9034_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9034_touch_close ; 
 int /*<<< orphan*/  da9034_touch_notifier ; 
 int /*<<< orphan*/  da9034_touch_open ; 
 int /*<<< orphan*/  da9034_tsi_work ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 struct da9034_touch_pdata* FUNC3 (TYPE_3__*) ; 
 struct input_dev* FUNC4 (TYPE_3__*) ; 
 struct da9034_touch* FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,struct da9034_touch*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct da9034_touch_pdata *pdata = FUNC3(&pdev->dev);
	struct da9034_touch *touch;
	struct input_dev *input_dev;
	int error;

	touch = FUNC5(&pdev->dev, sizeof(struct da9034_touch),
			     GFP_KERNEL);
	if (!touch) {
		FUNC2(&pdev->dev, "failed to allocate driver data\n");
		return -ENOMEM;
	}

	touch->da9034_dev = pdev->dev.parent;

	if (pdata) {
		touch->interval_ms	= pdata->interval_ms;
		touch->x_inverted	= pdata->x_inverted;
		touch->y_inverted	= pdata->y_inverted;
	} else {
		/* fallback into default */
		touch->interval_ms	= 10;
	}

	FUNC0(&touch->tsi_work, da9034_tsi_work);
	touch->notifier.notifier_call = da9034_touch_notifier;

	input_dev = FUNC4(&pdev->dev);
	if (!input_dev) {
		FUNC2(&pdev->dev, "failed to allocate input device\n");
		return -ENOMEM;
	}

	input_dev->name		= pdev->name;
	input_dev->open		= da9034_touch_open;
	input_dev->close	= da9034_touch_close;
	input_dev->dev.parent	= &pdev->dev;

	FUNC1(EV_ABS, input_dev->evbit);
	FUNC1(ABS_X, input_dev->absbit);
	FUNC1(ABS_Y, input_dev->absbit);
	FUNC7(input_dev, ABS_X, 0, 1023, 0, 0);
	FUNC7(input_dev, ABS_Y, 0, 1023, 0, 0);

	FUNC1(EV_KEY, input_dev->evbit);
	FUNC1(BTN_TOUCH, input_dev->keybit);

	touch->input_dev = input_dev;
	FUNC8(input_dev, touch);

	error = FUNC6(input_dev);
	if (error)
		return error;

	return 0;
}