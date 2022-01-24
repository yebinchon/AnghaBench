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
struct input_mt_slot {int dummy; } ;
struct input_mt {int trkid; int num_slots; struct input_mt_slot* slots; } ;
struct input_dev {int /*<<< orphan*/  absbit; struct input_mt* mt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_DISTANCE ; 
 int /*<<< orphan*/  ABS_MT_DISTANCE ; 
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_MT_PRESSURE ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  ABS_PRESSURE ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int TRKID_SGN ; 
 scalar_t__ FUNC0 (struct input_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct input_mt_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct input_dev *dev, bool use_count)
{
	struct input_mt *mt = dev->mt;
	struct input_mt_slot *oldest;
	int oldid, count, i;

	if (!mt)
		return;

	oldest = NULL;
	oldid = mt->trkid;
	count = 0;

	for (i = 0; i < mt->num_slots; ++i) {
		struct input_mt_slot *ps = &mt->slots[i];
		int id = FUNC2(ps, ABS_MT_TRACKING_ID);

		if (id < 0)
			continue;
		if ((id - oldid) & TRKID_SGN) {
			oldest = ps;
			oldid = id;
		}
		count++;
	}

	FUNC1(dev, EV_KEY, BTN_TOUCH, count > 0);

	if (use_count) {
		if (count == 0 &&
		    !FUNC4(ABS_MT_DISTANCE, dev->absbit) &&
		    FUNC4(ABS_DISTANCE, dev->absbit) &&
		    FUNC0(dev, ABS_DISTANCE) != 0) {
			/*
			 * Force reporting BTN_TOOL_FINGER for devices that
			 * only report general hover (and not per-contact
			 * distance) when contact is in proximity but not
			 * on the surface.
			 */
			count = 1;
		}

		FUNC3(dev, count);
	}

	if (oldest) {
		int x = FUNC2(oldest, ABS_MT_POSITION_X);
		int y = FUNC2(oldest, ABS_MT_POSITION_Y);

		FUNC1(dev, EV_ABS, ABS_X, x);
		FUNC1(dev, EV_ABS, ABS_Y, y);

		if (FUNC4(ABS_MT_PRESSURE, dev->absbit)) {
			int p = FUNC2(oldest, ABS_MT_PRESSURE);
			FUNC1(dev, EV_ABS, ABS_PRESSURE, p);
		}
	} else {
		if (FUNC4(ABS_MT_PRESSURE, dev->absbit))
			FUNC1(dev, EV_ABS, ABS_PRESSURE, 0);
	}
}