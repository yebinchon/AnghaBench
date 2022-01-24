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
struct mxs_lradc_ts {int /*<<< orphan*/  ts_input; int /*<<< orphan*/  ts_pressure; int /*<<< orphan*/  ts_y_pos; int /*<<< orphan*/  ts_x_pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mxs_lradc_ts *ts)
{
	FUNC0(ts->ts_input, ABS_X, ts->ts_x_pos);
	FUNC0(ts->ts_input, ABS_Y, ts->ts_y_pos);
	FUNC0(ts->ts_input, ABS_PRESSURE, ts->ts_pressure);
	FUNC1(ts->ts_input, BTN_TOUCH, 1);
	FUNC2(ts->ts_input);
}