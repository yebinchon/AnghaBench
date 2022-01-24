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
struct input_dev {int dummy; } ;
struct hideep_event {int index; int flag; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TOUCH_MAJOR ; 
 int HIDEEP_MT_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct input_dev *input,
			       const struct hideep_event *event)
{
	FUNC2(input, event->index & 0x0f);
	FUNC1(input,
				   FUNC0(event->type),
				   !(event->flag & HIDEEP_MT_RELEASED));
	if (!(event->flag & HIDEEP_MT_RELEASED)) {
		FUNC3(input, ABS_MT_POSITION_X,
				 FUNC4(&event->x));
		FUNC3(input, ABS_MT_POSITION_Y,
				 FUNC4(&event->y));
		FUNC3(input, ABS_MT_PRESSURE,
				 FUNC4(&event->z));
		FUNC3(input, ABS_MT_TOUCH_MAJOR, event->w);
	}
}