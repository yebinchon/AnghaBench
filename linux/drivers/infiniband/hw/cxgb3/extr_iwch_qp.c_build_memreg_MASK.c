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
struct TYPE_7__ {int /*<<< orphan*/ * pbl_addrs; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pbl_addrs; void* page_type_perms; void* va_base_lo_fbo; void* va_base_hi; void* len; void* stag; } ;
union t3_wr {TYPE_3__ pbl_frag; TYPE_2__ fastreg; } ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct t3_wq {int /*<<< orphan*/  size_log2; scalar_t__ wptr; scalar_t__ queue; } ;
struct TYPE_5__ {int length; int iova; } ;
struct iwch_mr {int npages; scalar_t__* pages; TYPE_1__ ibmr; } ;
struct ib_reg_wr {int key; int /*<<< orphan*/  access; TYPE_4__* mr; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_8__ {int /*<<< orphan*/  page_size; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T3_EOP ; 
 int T3_MAX_FASTREG_DEPTH ; 
 int T3_MAX_FASTREG_FRAG ; 
 int /*<<< orphan*/  T3_WR_FASTREG ; 
 int /*<<< orphan*/  TPT_VATO ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct iwch_mr* FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC12(union t3_wr *wqe, const struct ib_reg_wr *wr,
			u8 *flit_cnt, int *wr_cnt, struct t3_wq *wq)
{
	struct iwch_mr *mhp = FUNC11(wr->mr);
	int i;
	__be64 *p;

	if (mhp->npages > T3_MAX_FASTREG_DEPTH)
		return -EINVAL;
	*wr_cnt = 1;
	wqe->fastreg.stag = FUNC7(wr->key);
	wqe->fastreg.len = FUNC7(mhp->ibmr.length);
	wqe->fastreg.va_base_hi = FUNC7(mhp->ibmr.iova >> 32);
	wqe->fastreg.va_base_lo_fbo =
				FUNC7(mhp->ibmr.iova & 0xffffffff);
	wqe->fastreg.page_type_perms = FUNC7(
		FUNC2(mhp->npages) |
		FUNC3(FUNC9(wr->mr->page_size) - 12) |
		FUNC5(TPT_VATO) |
		FUNC4(FUNC10(wr->access)));
	p = &wqe->fastreg.pbl_addrs[0];
	for (i = 0; i < mhp->npages; i++, p++) {

		/* If we need a 2nd WR, then set it up */
		if (i == T3_MAX_FASTREG_FRAG) {
			*wr_cnt = 2;
			wqe = (union t3_wr *)(wq->queue +
				FUNC1((wq->wptr+1), wq->size_log2));
			FUNC6((void *)wqe, T3_WR_FASTREG, 0,
			       FUNC0(wq->wptr + 1, wq->size_log2),
			       0, 1 + mhp->npages - T3_MAX_FASTREG_FRAG,
			       T3_EOP);

			p = &wqe->pbl_frag.pbl_addrs[0];
		}
		*p = FUNC8((u64)mhp->pages[i]);
	}
	*flit_cnt = 5 + mhp->npages;
	if (*flit_cnt > 15)
		*flit_cnt = 15;
	return 0;
}