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
struct mthca_qp {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct mthca_cq_buf {int dummy; } ;
struct TYPE_3__ {int cqe; } ;
struct mthca_cq {int cons_index; int /*<<< orphan*/  lock; TYPE_2__* resize_buf; TYPE_1__ ibcq; struct mthca_cq_buf buf; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {scalar_t__ state; int cqe; struct mthca_cq_buf buf; } ;

/* Variables and functions */
 scalar_t__ CQ_RESIZE_READY ; 
 scalar_t__ CQ_RESIZE_SWAPPED ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mthca_cq_buf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*) ; 
 int FUNC3 (struct mthca_dev*,struct mthca_cq*,struct mthca_qp**,int*,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mthca_cq* FUNC6 (struct ib_cq*) ; 
 struct mthca_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*,struct mthca_cq*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(struct ib_cq *ibcq, int num_entries,
		  struct ib_wc *entry)
{
	struct mthca_dev *dev = FUNC7(ibcq->device);
	struct mthca_cq *cq = FUNC6(ibcq);
	struct mthca_qp *qp = NULL;
	unsigned long flags;
	int err = 0;
	int freed = 0;
	int npolled;

	FUNC4(&cq->lock, flags);

	npolled = 0;
repoll:
	while (npolled < num_entries) {
		err = FUNC3(dev, cq, &qp,
				     &freed, entry + npolled);
		if (err)
			break;
		++npolled;
	}

	if (freed) {
		FUNC10();
		FUNC9(dev, cq, freed);
	}

	/*
	 * If a CQ resize is in progress and we discovered that the
	 * old buffer is empty, then peek in the new buffer, and if
	 * it's not empty, switch to the new buffer and continue
	 * polling there.
	 */
	if (FUNC8(err == -EAGAIN && cq->resize_buf &&
		     cq->resize_buf->state == CQ_RESIZE_READY)) {
		/*
		 * In Tavor mode, the hardware keeps the producer
		 * index modulo the CQ size.  Since we might be making
		 * the CQ bigger, we need to mask our consumer index
		 * using the size of the old CQ buffer before looking
		 * in the new CQ buffer.
		 */
		if (!FUNC2(dev))
			cq->cons_index &= cq->ibcq.cqe;

		if (FUNC0(FUNC1(&cq->resize_buf->buf,
					    cq->cons_index & cq->resize_buf->cqe))) {
			struct mthca_cq_buf tbuf;
			int tcqe;

			tbuf         = cq->buf;
			tcqe         = cq->ibcq.cqe;
			cq->buf      = cq->resize_buf->buf;
			cq->ibcq.cqe = cq->resize_buf->cqe;

			cq->resize_buf->buf   = tbuf;
			cq->resize_buf->cqe   = tcqe;
			cq->resize_buf->state = CQ_RESIZE_SWAPPED;

			goto repoll;
		}
	}

	FUNC5(&cq->lock, flags);

	return err == 0 || err == -EAGAIN ? npolled : err;
}