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
struct mthca_srq {int first_free; int srqn; int max_gs; int wqe_shift; int /*<<< orphan*/  lock; int /*<<< orphan*/ * wrid; void* last; } ;
struct mthca_next_seg {scalar_t__ ee_nds; } ;
struct mthca_dev {int /*<<< orphan*/  doorbell_lock; scalar_t__ kar; } ;
struct mthca_data_seg {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; scalar_t__ sg_list; struct ib_recv_wr* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTHCA_NEXT_DBD ; 
 scalar_t__ MTHCA_RECEIVE_DOORBELL ; 
 int MTHCA_TAVOR_MAX_WQES_PER_RECV_DB ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct mthca_srq*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mthca_dev* FUNC10 (int /*<<< orphan*/ ) ; 
 struct mthca_srq* FUNC11 (struct ib_srq*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int* FUNC14 (void*) ; 

int FUNC15(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
			      const struct ib_recv_wr **bad_wr)
{
	struct mthca_dev *dev = FUNC10(ibsrq->device);
	struct mthca_srq *srq = FUNC11(ibsrq);
	unsigned long flags;
	int err = 0;
	int first_ind;
	int ind;
	int next_ind;
	int nreq;
	int i;
	void *wqe;
	void *prev_wqe;

	FUNC8(&srq->lock, flags);

	first_ind = srq->first_free;

	for (nreq = 0; wr; wr = wr->next) {
		ind       = srq->first_free;
		wqe       = FUNC2(srq, ind);
		next_ind  = *FUNC14(wqe);

		if (FUNC12(next_ind < 0)) {
			FUNC4(dev, "SRQ %06x full\n", srq->srqn);
			err = -ENOMEM;
			*bad_wr = wr;
			break;
		}

		prev_wqe  = srq->last;
		srq->last = wqe;

		((struct mthca_next_seg *) wqe)->ee_nds = 0;
		/* flags field will always remain 0 */

		wqe += sizeof (struct mthca_next_seg);

		if (FUNC12(wr->num_sge > srq->max_gs)) {
			err = -EINVAL;
			*bad_wr = wr;
			srq->last = prev_wqe;
			break;
		}

		for (i = 0; i < wr->num_sge; ++i) {
			FUNC5(wqe, wr->sg_list + i);
			wqe += sizeof (struct mthca_data_seg);
		}

		if (i < srq->max_gs)
			FUNC6(wqe);

		((struct mthca_next_seg *) prev_wqe)->ee_nds =
			FUNC1(MTHCA_NEXT_DBD);

		srq->wrid[ind]  = wr->wr_id;
		srq->first_free = next_ind;

		++nreq;
		if (FUNC12(nreq == MTHCA_TAVOR_MAX_WQES_PER_RECV_DB)) {
			nreq = 0;

			/*
			 * Make sure that descriptors are written
			 * before doorbell is rung.
			 */
			FUNC13();

			FUNC7(first_ind << srq->wqe_shift, srq->srqn << 8,
				      dev->kar + MTHCA_RECEIVE_DOORBELL,
				      FUNC0(&dev->doorbell_lock));

			first_ind = srq->first_free;
		}
	}

	if (FUNC3(nreq)) {
		/*
		 * Make sure that descriptors are written before
		 * doorbell is rung.
		 */
		FUNC13();

		FUNC7(first_ind << srq->wqe_shift, (srq->srqn << 8) | nreq,
			      dev->kar + MTHCA_RECEIVE_DOORBELL,
			      FUNC0(&dev->doorbell_lock));
	}

	FUNC9(&srq->lock, flags);
	return err;
}