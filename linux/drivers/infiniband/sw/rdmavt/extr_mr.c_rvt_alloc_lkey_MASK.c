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
typedef  size_t u32 ;
struct rvt_mregion {int lkey_published; size_t lkey; TYPE_1__* pd; } ;
struct rvt_lkey_table {size_t next; int max; int gen; int /*<<< orphan*/  lock; int /*<<< orphan*/ * table; } ;
struct TYPE_4__ {int lkey_table_size; } ;
struct rvt_dev_info {TYPE_2__ dparms; int /*<<< orphan*/  dma_mr; struct rvt_lkey_table lkey_table; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_mregion* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct rvt_mregion *mr, int dma_region)
{
	unsigned long flags;
	u32 r;
	u32 n;
	int ret = 0;
	struct rvt_dev_info *dev = FUNC0(mr->pd->device);
	struct rvt_lkey_table *rkt = &dev->lkey_table;

	FUNC3(mr);
	FUNC5(&rkt->lock, flags);

	/* special case for dma_mr lkey == 0 */
	if (dma_region) {
		struct rvt_mregion *tmr;

		tmr = FUNC1(dev->dma_mr);
		if (!tmr) {
			mr->lkey_published = 1;
			/* Insure published written first */
			FUNC2(dev->dma_mr, mr);
			FUNC3(mr);
		}
		goto success;
	}

	/* Find the next available LKEY */
	r = rkt->next;
	n = r;
	for (;;) {
		if (!FUNC1(rkt->table[r]))
			break;
		r = (r + 1) & (rkt->max - 1);
		if (r == n)
			goto bail;
	}
	rkt->next = (r + 1) & (rkt->max - 1);
	/*
	 * Make sure lkey is never zero which is reserved to indicate an
	 * unrestricted LKEY.
	 */
	rkt->gen++;
	/*
	 * bits are capped to ensure enough bits for generation number
	 */
	mr->lkey = (r << (32 - dev->dparms.lkey_table_size)) |
		((((1 << (24 - dev->dparms.lkey_table_size)) - 1) & rkt->gen)
		 << 8);
	if (mr->lkey == 0) {
		mr->lkey |= 1 << 8;
		rkt->gen++;
	}
	mr->lkey_published = 1;
	/* Insure published written first */
	FUNC2(rkt->table[r], mr);
success:
	FUNC6(&rkt->lock, flags);
out:
	return ret;
bail:
	FUNC4(mr);
	FUNC6(&rkt->lock, flags);
	ret = -ENOMEM;
	goto out;
}