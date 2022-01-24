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
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct pwrkey_drv_data {int keystate; int /*<<< orphan*/  check_timer; struct input_dev* input; int /*<<< orphan*/  keycode; int /*<<< orphan*/  snvs; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct input_dev {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  REPEAT_INTERVAL ; 
 int SNVS_HPSR_BTN ; 
 int /*<<< orphan*/  SNVS_HPSR_REG ; 
 int /*<<< orphan*/  check_timer ; 
 struct pwrkey_drv_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct pwrkey_drv_data* pdata ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct pwrkey_drv_data *pdata = FUNC0(pdata, t, check_timer);
	struct input_dev *input = pdata->input;
	u32 state;

	FUNC6(pdata->snvs, SNVS_HPSR_REG, &state);
	state = state & SNVS_HPSR_BTN ? 1 : 0;

	/* only report new event if status changed */
	if (state ^ pdata->keystate) {
		pdata->keystate = state;
		FUNC1(input, EV_KEY, pdata->keycode, state);
		FUNC2(input);
		FUNC5(pdata->input->dev.parent);
	}

	/* repeat check if pressed long */
	if (state) {
		FUNC3(&pdata->check_timer,
			  jiffies + FUNC4(REPEAT_INTERVAL));
	}
}