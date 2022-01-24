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
typedef  int /*<<< orphan*/  u64 ;
struct mthca_srq {int max; int wqe_shift; void* last; int /*<<< orphan*/  wrid; int /*<<< orphan*/  mr; int /*<<< orphan*/  is_direct; int /*<<< orphan*/  queue; } ;
struct mthca_pd {int dummy; } ;
struct mthca_next_seg {scalar_t__ nda_op; } ;
struct mthca_dev {int dummy; } ;
struct mthca_data_seg {int /*<<< orphan*/  lkey; } ;
struct ib_udata {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MTHCA_INVAL_LKEY ; 
 int /*<<< orphan*/  MTHCA_MAX_DIRECT_SRQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct mthca_srq*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mthca_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mthca_pd*,int,int /*<<< orphan*/ *) ; 
 int* FUNC6 (void*) ; 

__attribute__((used)) static int FUNC7(struct mthca_dev *dev, struct mthca_pd *pd,
			       struct mthca_srq *srq, struct ib_udata *udata)
{
	struct mthca_data_seg *scatter;
	void *wqe;
	int err;
	int i;

	if (udata)
		return 0;

	srq->wrid = FUNC4(srq->max, sizeof(u64), GFP_KERNEL);
	if (!srq->wrid)
		return -ENOMEM;

	err = FUNC5(dev, srq->max << srq->wqe_shift,
			      MTHCA_MAX_DIRECT_SRQ_SIZE,
			      &srq->queue, &srq->is_direct, pd, 1, &srq->mr);
	if (err) {
		FUNC3(srq->wrid);
		return err;
	}

	/*
	 * Now initialize the SRQ buffer so that all of the WQEs are
	 * linked into the list of free WQEs.  In addition, set the
	 * scatter list L_Keys to the sentry value of 0x100.
	 */
	for (i = 0; i < srq->max; ++i) {
		struct mthca_next_seg *next;

		next = wqe = FUNC1(srq, i);

		if (i < srq->max - 1) {
			*FUNC6(wqe) = i + 1;
			next->nda_op = FUNC2(((i + 1) << srq->wqe_shift) | 1);
		} else {
			*FUNC6(wqe) = -1;
			next->nda_op = 0;
		}

		for (scatter = wqe + sizeof (struct mthca_next_seg);
		     (void *) scatter < wqe + (1 << srq->wqe_shift);
		     ++scatter)
			scatter->lkey = FUNC0(MTHCA_INVAL_LKEY);
	}

	srq->last = FUNC1(srq, srq->max - 1);

	return 0;
}