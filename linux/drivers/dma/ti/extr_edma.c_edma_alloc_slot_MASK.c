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
struct edma_cc {int num_channels; int num_slots; int /*<<< orphan*/  id; int /*<<< orphan*/  slot_inuse; scalar_t__ chmap_exist; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int EDMA_SLOT_ANY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  dummy_paramset ; 
 int /*<<< orphan*/  FUNC2 (struct edma_cc*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct edma_cc *ecc, int slot)
{
	if (slot >= 0) {
		slot = FUNC0(slot);
		/* Requesting entry paRAM slot for a HW triggered channel. */
		if (ecc->chmap_exist && slot < ecc->num_channels)
			slot = EDMA_SLOT_ANY;
	}

	if (slot < 0) {
		if (ecc->chmap_exist)
			slot = 0;
		else
			slot = ecc->num_channels;
		for (;;) {
			slot = FUNC3(ecc->slot_inuse,
						  ecc->num_slots,
						  slot);
			if (slot == ecc->num_slots)
				return -ENOMEM;
			if (!FUNC4(slot, ecc->slot_inuse))
				break;
		}
	} else if (slot >= ecc->num_slots) {
		return -EINVAL;
	} else if (FUNC4(slot, ecc->slot_inuse)) {
		return -EBUSY;
	}

	FUNC2(ecc, slot, &dummy_paramset);

	return FUNC1(ecc->id, slot);
}