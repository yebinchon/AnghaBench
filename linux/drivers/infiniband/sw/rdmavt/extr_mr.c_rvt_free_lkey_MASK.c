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
typedef  int u32 ;
struct rvt_mregion {int lkey; int /*<<< orphan*/  refcount; scalar_t__ lkey_published; TYPE_1__* pd; } ;
struct rvt_lkey_table {int /*<<< orphan*/  lock; int /*<<< orphan*/ * table; } ;
struct TYPE_4__ {int lkey_table_size; } ;
struct rvt_dev_info {TYPE_2__ dparms; int /*<<< orphan*/  dma_mr; struct rvt_lkey_table lkey_table; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct rvt_mregion *mr)
{
	unsigned long flags;
	u32 lkey = mr->lkey;
	u32 r;
	struct rvt_dev_info *dev = FUNC0(mr->pd->device);
	struct rvt_lkey_table *rkt = &dev->lkey_table;
	int freed = 0;

	FUNC4(&rkt->lock, flags);
	if (!lkey) {
		if (mr->lkey_published) {
			mr->lkey_published = 0;
			/* insure published is written before pointer */
			FUNC2(dev->dma_mr, NULL);
			FUNC3(mr);
		}
	} else {
		if (!mr->lkey_published)
			goto out;
		r = lkey >> (32 - dev->dparms.lkey_table_size);
		mr->lkey_published = 0;
		/* insure published is written before pointer */
		FUNC2(rkt->table[r], NULL);
	}
	freed++;
out:
	FUNC5(&rkt->lock, flags);
	if (freed)
		FUNC1(&mr->refcount);
}