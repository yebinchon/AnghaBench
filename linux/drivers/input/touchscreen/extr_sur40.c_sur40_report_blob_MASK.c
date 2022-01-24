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
struct sur40_blob {scalar_t__ type; int /*<<< orphan*/  ctr_y; int /*<<< orphan*/  ctr_x; int /*<<< orphan*/  pos_y; int /*<<< orphan*/  pos_x; int /*<<< orphan*/  bb_size_y; int /*<<< orphan*/  bb_size_x; int /*<<< orphan*/  blob_id; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOOL_X ; 
 int /*<<< orphan*/  ABS_MT_TOOL_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int MAX_CONTACTS ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 scalar_t__ SUR40_TOUCH ; 
 int FUNC0 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct sur40_blob *blob, struct input_dev *input)
{
	int wide, major, minor;
	int bb_size_x, bb_size_y, pos_x, pos_y, ctr_x, ctr_y, slotnum;

	if (blob->type != SUR40_TOUCH)
		return;

	slotnum = FUNC0(input, blob->blob_id);
	if (slotnum < 0 || slotnum >= MAX_CONTACTS)
		return;

	bb_size_x = FUNC4(blob->bb_size_x);
	bb_size_y = FUNC4(blob->bb_size_y);

	pos_x = FUNC4(blob->pos_x);
	pos_y = FUNC4(blob->pos_y);

	ctr_x = FUNC4(blob->ctr_x);
	ctr_y = FUNC4(blob->ctr_y);

	FUNC2(input, slotnum);
	FUNC1(input, MT_TOOL_FINGER, 1);
	wide = (bb_size_x > bb_size_y);
	major = FUNC5(bb_size_x, bb_size_y);
	minor = FUNC6(bb_size_x, bb_size_y);

	FUNC3(input, ABS_MT_POSITION_X, pos_x);
	FUNC3(input, ABS_MT_POSITION_Y, pos_y);
	FUNC3(input, ABS_MT_TOOL_X, ctr_x);
	FUNC3(input, ABS_MT_TOOL_Y, ctr_y);

	/* TODO: use a better orientation measure */
	FUNC3(input, ABS_MT_ORIENTATION, wide);
	FUNC3(input, ABS_MT_TOUCH_MAJOR, major);
	FUNC3(input, ABS_MT_TOUCH_MINOR, minor);
}