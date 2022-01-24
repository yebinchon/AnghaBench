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
struct input_mt_slot {int /*<<< orphan*/  frame; } ;
struct input_mt {size_t slot; int /*<<< orphan*/  frame; struct input_mt_slot* slots; } ;
struct input_dev {struct input_mt* mt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_TOOL_TYPE ; 
 int /*<<< orphan*/  ABS_MT_TRACKING_ID ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (struct input_mt_slot*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct input_mt*) ; 

bool FUNC3(struct input_dev *dev,
				unsigned int tool_type, bool active)
{
	struct input_mt *mt = dev->mt;
	struct input_mt_slot *slot;
	int id;

	if (!mt)
		return false;

	slot = &mt->slots[mt->slot];
	slot->frame = mt->frame;

	if (!active) {
		FUNC0(dev, EV_ABS, ABS_MT_TRACKING_ID, -1);
		return false;
	}

	id = FUNC1(slot, ABS_MT_TRACKING_ID);
	if (id < 0)
		id = FUNC2(mt);

	FUNC0(dev, EV_ABS, ABS_MT_TRACKING_ID, id);
	FUNC0(dev, EV_ABS, ABS_MT_TOOL_TYPE, tool_type);

	return true;
}