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
struct tp_finger {int /*<<< orphan*/  orientation; int /*<<< orphan*/  tool_minor; int /*<<< orphan*/  tool_major; int /*<<< orphan*/  touch_minor; int /*<<< orphan*/  touch_major; } ;
struct input_mt_pos {int x; int y; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_ORIENTATION ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MINOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MAJOR ; 
 int /*<<< orphan*/  ABS_MT_WIDTH_MINOR ; 
 int MAX_FINGER_ORIENTATION ; 
 int /*<<< orphan*/  MT_TOOL_FINGER ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_dev *input, int slot,
			       const struct input_mt_pos *pos,
			       const struct tp_finger *f)
{
	FUNC1(input, slot);
	FUNC0(input, MT_TOOL_FINGER, true);

	FUNC2(input, ABS_MT_TOUCH_MAJOR,
			 FUNC3(f->touch_major) << 1);
	FUNC2(input, ABS_MT_TOUCH_MINOR,
			 FUNC3(f->touch_minor) << 1);
	FUNC2(input, ABS_MT_WIDTH_MAJOR,
			 FUNC3(f->tool_major) << 1);
	FUNC2(input, ABS_MT_WIDTH_MINOR,
			 FUNC3(f->tool_minor) << 1);
	FUNC2(input, ABS_MT_ORIENTATION,
			 MAX_FINGER_ORIENTATION - FUNC3(f->orientation));
	FUNC2(input, ABS_MT_POSITION_X, pos->x);
	FUNC2(input, ABS_MT_POSITION_Y, pos->y);
}