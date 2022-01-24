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
struct input_dev {int dummy; } ;
struct elan_drvdata {int max_y; struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct elan_drvdata *drvdata, u8 *data,
				unsigned int slot_num)
{
	struct input_dev *input = drvdata->input;
	int x, y, p;

	bool active = !!data;

	FUNC1(input, slot_num);
	FUNC0(input, MT_TOOL_FINGER, active);
	if (active) {
		x = ((data[0] & 0xF0) << 4) | data[1];
		y = drvdata->max_y -
		    (((data[0] & 0x07) << 8) | data[2]);
		p = data[4];

		FUNC2(input, ABS_MT_POSITION_X, x);
		FUNC2(input, ABS_MT_POSITION_Y, y);
		FUNC2(input, ABS_MT_PRESSURE, p);
	}
}