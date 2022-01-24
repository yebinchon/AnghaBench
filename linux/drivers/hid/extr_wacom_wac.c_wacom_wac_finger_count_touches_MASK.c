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
struct TYPE_4__ {unsigned int touch_max; } ;
struct wacom_wac {TYPE_2__ features; struct input_dev* touch_input; } ;
struct input_mt_slot {int dummy; } ;
struct input_dev {TYPE_1__* mt; int /*<<< orphan*/  key; } ;
struct TYPE_3__ {int num_slots; struct input_mt_slot* slots; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FUNC0 (struct input_mt_slot*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct wacom_wac*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wacom_wac *wacom)
{
	struct input_dev *input = wacom->touch_input;
	unsigned touch_max = wacom->features.touch_max;
	int count = 0;
	int i;

	if (!touch_max)
		return 0;

	if (touch_max == 1)
		return FUNC2(BTN_TOUCH, input->key) &&
			FUNC1(wacom);

	for (i = 0; i < input->mt->num_slots; i++) {
		struct input_mt_slot *ps = &input->mt->slots[i];
		int id = FUNC0(ps, ABS_MT_TRACKING_ID);
		if (id >= 0)
			count++;
	}

	return count;
}