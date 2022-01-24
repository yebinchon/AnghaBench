#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  size_t u32 ;
struct rvt_sge {size_t length; size_t sge_length; unsigned int m; unsigned int n; void* vaddr; struct rvt_mregion* mr; } ;
struct TYPE_6__ {scalar_t__ pd; int /*<<< orphan*/  device; } ;
struct rvt_qp {TYPE_2__ ibqp; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct rvt_pd {scalar_t__ user; TYPE_1__ ibpd; } ;
struct rvt_mregion {size_t lkey; scalar_t__ pd; scalar_t__ iova; size_t length; int access_flags; int page_shift; TYPE_4__** map; scalar_t__ offset; int /*<<< orphan*/  lkey_invalid; int /*<<< orphan*/  lkey_published; } ;
struct rvt_lkey_table {size_t shift; int /*<<< orphan*/ * table; } ;
struct rvt_dev_info {int /*<<< orphan*/  dma_mr; struct rvt_lkey_table lkey_table; } ;
struct TYPE_8__ {TYPE_3__* segs; } ;
struct TYPE_7__ {size_t length; void* vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t RVT_SEGSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct rvt_dev_info* FUNC2 (int /*<<< orphan*/ ) ; 
 struct rvt_pd* FUNC3 (scalar_t__) ; 
 struct rvt_mregion* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct rvt_mregion*) ; 
 int /*<<< orphan*/  FUNC8 (struct rvt_mregion*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct rvt_qp *qp, struct rvt_sge *sge,
		u32 len, u64 vaddr, u32 rkey, int acc)
{
	struct rvt_dev_info *dev = FUNC2(qp->ibqp.device);
	struct rvt_lkey_table *rkt = &dev->lkey_table;
	struct rvt_mregion *mr;
	unsigned n, m;
	size_t off;

	/*
	 * We use RKEY == zero for kernel virtual addresses
	 * (see rvt_get_dma_mr() and dma_virt_ops).
	 */
	FUNC5();
	if (rkey == 0) {
		struct rvt_pd *pd = FUNC3(qp->ibqp.pd);
		struct rvt_dev_info *rdi = FUNC2(pd->ibpd.device);

		if (pd->user)
			goto bail;
		mr = FUNC4(rdi->dma_mr);
		if (!mr)
			goto bail;
		FUNC7(mr);
		FUNC6();

		sge->mr = mr;
		sge->vaddr = (void *)vaddr;
		sge->length = len;
		sge->sge_length = len;
		sge->m = 0;
		sge->n = 0;
		goto ok;
	}

	mr = FUNC4(rkt->table[rkey >> rkt->shift]);
	if (!mr)
		goto bail;
	FUNC7(mr);
	/* insure mr read is before test */
	if (!FUNC0(mr->lkey_published))
		goto bail_unref;
	if (FUNC9(FUNC1(&mr->lkey_invalid) ||
		     mr->lkey != rkey || qp->ibqp.pd != mr->pd))
		goto bail_unref;

	off = vaddr - mr->iova;
	if (FUNC9(vaddr < mr->iova || off + len > mr->length ||
		     (mr->access_flags & acc) == 0))
		goto bail_unref;
	FUNC6();

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
	sge->mr = mr;
	sge->vaddr = mr->map[m]->segs[n].vaddr + off;
	sge->length = mr->map[m]->segs[n].length - off;
	sge->sge_length = len;
	sge->m = m;
	sge->n = n;
ok:
	return 1;
bail_unref:
	FUNC8(mr);
bail:
	FUNC6();
	return 0;
}