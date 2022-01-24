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
typedef  int u8 ;
struct goodix_ts_data {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  prop; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC5(struct goodix_ts_data *ts, u8 *coor_data)
{
	int id = coor_data[1] & 0x0F;
	int input_x = FUNC0(&coor_data[3]);
	int input_y = FUNC0(&coor_data[5]);
	int input_w = FUNC0(&coor_data[7]);

	FUNC2(ts->input_dev, id);
	FUNC1(ts->input_dev, MT_TOOL_FINGER, true);
	FUNC4(ts->input_dev, &ts->prop,
			       input_x, input_y, true);
	FUNC3(ts->input_dev, ABS_MT_TOUCH_MAJOR, input_w);
	FUNC3(ts->input_dev, ABS_MT_WIDTH_MAJOR, input_w);
}