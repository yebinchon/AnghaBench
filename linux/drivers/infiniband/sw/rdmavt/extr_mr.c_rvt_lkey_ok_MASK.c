#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rvt_sge {scalar_t__ length; scalar_t__ sge_length; unsigned int m; unsigned int n; void* vaddr; struct rvt_mregion* mr; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rvt_pd {TYPE_1__ ibpd; scalar_t__ user; } ;
struct rvt_mregion {scalar_t__ lkey; size_t user_base; scalar_t__ length; int access_flags; int page_shift; TYPE_3__** map; scalar_t__ offset; TYPE_1__* pd; int /*<<< orphan*/  lkey_invalid; int /*<<< orphan*/  lkey_published; } ;
struct rvt_lkey_table {size_t shift; int /*<<< orphan*/ * table; } ;
struct rvt_dev_info {int /*<<< orphan*/  dma_mr; } ;
struct ib_sge {scalar_t__ lkey; size_t addr; scalar_t__ length; } ;
struct TYPE_6__ {TYPE_2__* segs; } ;
struct TYPE_5__ {size_t length; void* vaddr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t RVT_SEGSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rvt_dev_info* FUNC2 (int /*<<< orphan*/ ) ; 
 struct rvt_mregion* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_mregion*) ; 
 scalar_t__ FUNC8 (struct rvt_sge*,struct ib_sge*) ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_sge*,struct ib_sge*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct rvt_lkey_table *rkt, struct rvt_pd *pd,
		struct rvt_sge *isge, struct rvt_sge *last_sge,
		struct ib_sge *sge, int acc)
{
	struct rvt_mregion *mr;
	unsigned n, m;
	size_t off;

	/*
	 * We use LKEY == zero for kernel virtual addresses
	 * (see rvt_get_dma_mr() and dma_virt_ops).
	 */
	if (sge->lkey == 0) {
		struct rvt_dev_info *dev = FUNC2(pd->ibpd.device);

		if (pd->user)
			return -EINVAL;
		if (FUNC8(last_sge, sge))
			return 0;
		FUNC4();
		mr = FUNC3(dev->dma_mr);
		if (!mr)
			goto bail;
		FUNC6(mr);
		FUNC5();

		isge->mr = mr;
		isge->vaddr = (void *)sge->addr;
		isge->length = sge->length;
		isge->sge_length = sge->length;
		isge->m = 0;
		isge->n = 0;
		goto ok;
	}
	if (FUNC8(last_sge, sge))
		return 0;
	FUNC4();
	mr = FUNC3(rkt->table[sge->lkey >> rkt->shift]);
	if (!mr)
		goto bail;
	FUNC6(mr);
	if (!FUNC0(mr->lkey_published))
		goto bail_unref;

	if (FUNC10(FUNC1(&mr->lkey_invalid) ||
		     mr->lkey != sge->lkey || mr->pd != &pd->ibpd))
		goto bail_unref;

	off = sge->addr - mr->user_base;
	if (FUNC10(sge->addr < mr->user_base ||
		     off + sge->length > mr->length ||
		     (mr->access_flags & acc) != acc))
		goto bail_unref;
	FUNC5();

	off += mr->offset;
	if (mr->page_shift) {
		/*
		 * page sizes are uniform power of 2 so no loop is necessary
		 * entries_spanned_by_off is the number of times the loop below
		 * would have executed.
		*/
		size_t entries_spanned_by_off;

		entries_spanned_by_off = off >> mr->page_shift;
		off -= (entries_spanned_by_off << mr->page_shift);
		m = entries_spanned_by_off / RVT_SEGSZ;
		n = entries_spanned_by_off % RVT_SEGSZ;
	} else {
		m = 0;
		n = 0;
		while (off >= mr->map[m]->segs[n].length) {
			off -= mr->map[m]->segs[n].length;
			n++;
			if (n >= RVT_SEGSZ) {
				m++;
				n = 0;
			}
		}
	}
	isge->mr = mr;
	isge->vaddr = mr->map[m]->segs[n].vaddr + off;
	isge->length = mr->map[m]->segs[n].length - off;
	isge->sge_length = sge->length;
	isge->m = m;
	isge->n = n;
ok:
	FUNC9(isge, sge);
	return 1;
bail_unref:
	FUNC7(mr);
bail:
	FUNC5();
	return -EINVAL;
}