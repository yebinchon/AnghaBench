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
typedef  int u32 ;
struct sun4i_ts_data {int ignore_fifo_data; int /*<<< orphan*/  input; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FIFO_DATA_PENDING ; 
 scalar_t__ TP_DATA ; 
 int TP_UP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct sun4i_ts_data *ts, u32 reg_val)
{
	u32 x, y;

	if (reg_val & FIFO_DATA_PENDING) {
		x = FUNC3(ts->base + TP_DATA);
		y = FUNC3(ts->base + TP_DATA);
		/* The 1st location reported after an up event is unreliable */
		if (!ts->ignore_fifo_data) {
			FUNC0(ts->input, ABS_X, x);
			FUNC0(ts->input, ABS_Y, y);
			/*
			 * The hardware has a separate down status bit, but
			 * that gets set before we get the first location,
			 * resulting in reporting a click on the old location.
			 */
			FUNC1(ts->input, BTN_TOUCH, 1);
			FUNC2(ts->input);
		} else {
			ts->ignore_fifo_data = false;
		}
	}

	if (reg_val & TP_UP_PENDING) {
		ts->ignore_fifo_data = true;
		FUNC1(ts->input, BTN_TOUCH, 0);
		FUNC2(ts->input);
	}
}