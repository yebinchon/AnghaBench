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
struct mxs_lradc_ts {struct input_dev* ts_input; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {char* name; int /*<<< orphan*/  propbit; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  INPUT_PROP_DIRECT ; 
 int /*<<< orphan*/  LRADC_SINGLE_SAMPLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct input_dev* FUNC1 (struct device*) ; 
 int FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  mxs_lradc_ts_close ; 
 int /*<<< orphan*/  mxs_lradc_ts_open ; 

__attribute__((used)) static int FUNC6(struct mxs_lradc_ts *ts)
{
	struct input_dev *input;
	struct device *dev = ts->dev;

	input = FUNC1(dev);
	if (!input)
		return -ENOMEM;

	input->name = "mxs-lradc-ts";
	input->id.bustype = BUS_HOST;
	input->open = mxs_lradc_ts_open;
	input->close = mxs_lradc_ts_close;

	FUNC0(INPUT_PROP_DIRECT, input->propbit);
	FUNC4(input, EV_KEY, BTN_TOUCH);
	FUNC3(input, ABS_X, 0, LRADC_SINGLE_SAMPLE_MASK, 0, 0);
	FUNC3(input, ABS_Y, 0, LRADC_SINGLE_SAMPLE_MASK, 0, 0);
	FUNC3(input, ABS_PRESSURE, 0, LRADC_SINGLE_SAMPLE_MASK,
			     0, 0);

	ts->ts_input = input;
	FUNC5(input, ts);

	return FUNC2(input);
}