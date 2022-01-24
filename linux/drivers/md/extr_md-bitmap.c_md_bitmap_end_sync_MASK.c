#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct bitmap {TYPE_1__ counts; scalar_t__ allclean; } ;
typedef  int sector_t ;
typedef  int bitmap_counter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NEEDED_MASK ; 
 scalar_t__ FUNC1 (int) ; 
 int RESYNC_MASK ; 
 int* FUNC2 (TYPE_1__*,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct bitmap *bitmap, sector_t offset, sector_t *blocks, int aborted)
{
	bitmap_counter_t *bmc;
	unsigned long flags;

	if (bitmap == NULL) {
		*blocks = 1024;
		return;
	}
	FUNC4(&bitmap->counts.lock, flags);
	bmc = FUNC2(&bitmap->counts, offset, blocks, 0);
	if (bmc == NULL)
		goto unlock;
	/* locked */
	if (FUNC1(*bmc)) {
		*bmc &= ~RESYNC_MASK;

		if (!FUNC0(*bmc) && aborted)
			*bmc |= NEEDED_MASK;
		else {
			if (*bmc <= 2) {
				FUNC3(&bitmap->counts, offset);
				bitmap->allclean = 0;
			}
		}
	}
 unlock:
	FUNC5(&bitmap->counts.lock, flags);
}