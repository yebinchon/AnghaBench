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
struct mthca_srq {int first_free; int max_gs; int counter; int /*<<< orphan*/  lock; int /*<<< orphan*/ * db; int /*<<< orphan*/ * wrid; int /*<<< orphan*/  srqn; } ;
struct mthca_next_seg {scalar_t__ ee_nds; } ;
struct mthca_dev {int dummy; } ;
struct mthca_data_seg {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct ib_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; scalar_t__ sg_list; struct ib_recv_wr* next; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct mthca_srq*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mthca_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct mthca_srq* FUNC9 (struct ib_srq*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int* FUNC12 (void*) ; 

int FUNC13(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
			      const struct ib_recv_wr **bad_wr)
{
	struct mthca_dev *dev = FUNC8(ibsrq->device);
	struct mthca_srq *srq = FUNC9(ibsrq);
	unsigned long flags;
	int err = 0;
	int ind;
	int next_ind;
	int nreq;
	int i;
	void *wqe;

	FUNC6(&srq->lock, flags);

	for (nreq = 0; wr; ++nreq, wr = wr->next) {
		ind       = srq->first_free;
		wqe       = FUNC1(srq, ind);
		next_ind  = *FUNC12(wqe);

		if (FUNC10(next_ind < 0)) {
			FUNC3(dev, "SRQ %06x full\n", srq->srqn);
			err = -ENOMEM;
			*bad_wr = wr;
			break;
		}

		((struct mthca_next_seg *) wqe)->ee_nds = 0;
		/* flags field will always remain 0 */

		wqe += sizeof (struct mthca_next_seg);

		if (FUNC10(wr->num_sge > srq->max_gs)) {
			err = -EINVAL;
			*bad_wr = wr;
			break;
		}

		for (i = 0; i < wr->num_sge; ++i) {
			FUNC4(wqe, wr->sg_list + i);
			wqe += sizeof (struct mthca_data_seg);
		}

		if (i < srq->max_gs)
			FUNC5(wqe);

		srq->wrid[ind]  = wr->wr_id;
		srq->first_free = next_ind;
	}

	if (FUNC2(nreq)) {
		srq->counter += nreq;

		/*
		 * Make sure that descriptors are written before
		 * we write doorbell record.
		 */
		FUNC11();
		*srq->db = FUNC0(srq->counter);
	}

	FUNC7(&srq->lock, flags);
	return err;
}