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
typedef  int u16 ;
struct ts4800_ts {int pendown; scalar_t__ debounce; scalar_t__ base; } ;
struct input_polled_dev {struct ts4800_ts* private; struct input_dev* input; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 scalar_t__ DEBOUNCE_COUNT ; 
 int MAX_12BIT ; 
 int PENDOWN_MASK ; 
 scalar_t__ X_OFFSET ; 
 scalar_t__ Y_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct input_polled_dev *dev)
{
	struct input_dev *input_dev = dev->input;
	struct ts4800_ts *ts = dev->private;
	u16 last_x = FUNC3(ts->base + X_OFFSET);
	u16 last_y = FUNC3(ts->base + Y_OFFSET);
	bool pendown = last_x & PENDOWN_MASK;

	if (pendown) {
		if (ts->debounce) {
			ts->debounce--;
			return;
		}

		if (!ts->pendown) {
			FUNC1(input_dev, BTN_TOUCH, 1);
			ts->pendown = true;
		}

		last_x = ((~last_x) >> 4) & MAX_12BIT;
		last_y = ((~last_y) >> 4) & MAX_12BIT;

		FUNC0(input_dev, ABS_X, last_x);
		FUNC0(input_dev, ABS_Y, last_y);
		FUNC2(input_dev);
	} else if (ts->pendown) {
		ts->pendown = false;
		ts->debounce = DEBOUNCE_COUNT;
		FUNC1(input_dev, BTN_TOUCH, 0);
		FUNC2(input_dev);
	}
}