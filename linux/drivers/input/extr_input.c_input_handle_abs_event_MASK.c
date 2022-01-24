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
struct input_mt {int num_slots; int slot; TYPE_1__* slots; } ;
struct input_dev {TYPE_2__* absinfo; struct input_mt* mt; } ;
struct TYPE_4__ {int value; int /*<<< orphan*/  fuzz; } ;
struct TYPE_3__ {int* abs; } ;

/* Variables and functions */
 unsigned int ABS_MT_FIRST ; 
 unsigned int ABS_MT_SLOT ; 
 int INPUT_IGNORE_EVENT ; 
 int INPUT_PASS_TO_HANDLERS ; 
 int INPUT_SLOT ; 
 size_t FUNC0 (struct input_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,unsigned int,size_t) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev,
				  unsigned int code, int *pval)
{
	struct input_mt *mt = dev->mt;
	bool is_mt_event;
	int *pold;

	if (code == ABS_MT_SLOT) {
		/*
		 * "Stage" the event; we'll flush it later, when we
		 * get actual touch data.
		 */
		if (mt && *pval >= 0 && *pval < mt->num_slots)
			mt->slot = *pval;

		return INPUT_IGNORE_EVENT;
	}

	is_mt_event = FUNC3(code);

	if (!is_mt_event) {
		pold = &dev->absinfo[code].value;
	} else if (mt) {
		pold = &mt->slots[mt->slot].abs[code - ABS_MT_FIRST];
	} else {
		/*
		 * Bypass filtering for multi-touch events when
		 * not employing slots.
		 */
		pold = NULL;
	}

	if (pold) {
		*pval = FUNC2(*pval, *pold,
						dev->absinfo[code].fuzz);
		if (*pold == *pval)
			return INPUT_IGNORE_EVENT;

		*pold = *pval;
	}

	/* Flush pending "slot" event */
	if (is_mt_event && mt && mt->slot != FUNC0(dev, ABS_MT_SLOT)) {
		FUNC1(dev, ABS_MT_SLOT, mt->slot);
		return INPUT_PASS_TO_HANDLERS | INPUT_SLOT;
	}

	return INPUT_PASS_TO_HANDLERS;
}