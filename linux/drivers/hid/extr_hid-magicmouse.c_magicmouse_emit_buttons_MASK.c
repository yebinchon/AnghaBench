#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct magicmouse_sc {int /*<<< orphan*/  scroll_accel; TYPE_2__* input; TYPE_1__* touches; } ;
struct TYPE_4__ {int /*<<< orphan*/  key; } ;
struct TYPE_3__ {int x; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_RIGHT ; 
 int /*<<< orphan*/  SCROLL_ACCEL_DEFAULT ; 
 scalar_t__ emulate_3button ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct magicmouse_sc*) ; 
 int middle_button_start ; 
 int middle_button_stop ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct magicmouse_sc *msc, int state)
{
	int last_state = FUNC2(BTN_LEFT, msc->input->key) << 0 |
		FUNC2(BTN_RIGHT, msc->input->key) << 1 |
		FUNC2(BTN_MIDDLE, msc->input->key) << 2;

	if (emulate_3button) {
		int id;

		/* If some button was pressed before, keep it held
		 * down.  Otherwise, if there's exactly one firm
		 * touch, use that to override the mouse's guess.
		 */
		if (state == 0) {
			/* The button was released. */
		} else if (last_state != 0) {
			state = last_state;
		} else if ((id = FUNC1(msc)) >= 0) {
			int x = msc->touches[id].x;
			if (x < middle_button_start)
				state = 1;
			else if (x > middle_button_stop)
				state = 2;
			else
				state = 4;
		} /* else: we keep the mouse's guess */

		FUNC0(msc->input, BTN_MIDDLE, state & 4);
	}

	FUNC0(msc->input, BTN_LEFT, state & 1);
	FUNC0(msc->input, BTN_RIGHT, state & 2);

	if (state != last_state)
		msc->scroll_accel = SCROLL_ACCEL_DEFAULT;
}