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
struct uclogic_drvdata {struct input_dev* pen_input; } ;
struct timer_list {int dummy; } ;
struct input_dev {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  BTN_TOOL_PEN ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 struct uclogic_drvdata* drvdata ; 
 struct uclogic_drvdata* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  inrange_timer ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct uclogic_drvdata *drvdata = FUNC0(drvdata, t,
							inrange_timer);
	struct input_dev *input = drvdata->pen_input;

	if (input == NULL)
		return;
	FUNC2(input, ABS_PRESSURE, 0);
	/* If BTN_TOUCH state is changing */
	if (FUNC5(BTN_TOUCH, input->key)) {
		FUNC1(input, EV_MSC, MSC_SCAN,
				/* Digitizer Tip Switch usage */
				0xd0042);
		FUNC3(input, BTN_TOUCH, 0);
	}
	FUNC3(input, BTN_TOOL_PEN, 0);
	FUNC4(input);
}