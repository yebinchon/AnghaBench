#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct t4_cqe {int /*<<< orphan*/  header; } ;
struct t4_swsqe {int complete; struct t4_cqe cqe; } ;
struct TYPE_11__ {struct t4_swsqe* sw_sq; TYPE_1__* oldest_read; } ;
struct TYPE_13__ {int flushed; TYPE_2__ sq; } ;
struct c4iw_qp {int /*<<< orphan*/  lock; TYPE_6__ wq; } ;
struct TYPE_12__ {size_t sw_pidx; struct t4_cqe* sw_queue; int /*<<< orphan*/  cqid; } ;
struct c4iw_cq {TYPE_3__ cq; int /*<<< orphan*/  rhp; } ;
struct TYPE_10__ {int /*<<< orphan*/  signaled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC1 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct t4_cqe*) ; 
 size_t FUNC4 (struct t4_cqe*) ; 
 int FUNC5 (struct t4_cqe*) ; 
 scalar_t__ FW_RI_READ_RESP ; 
 scalar_t__ FW_RI_TERMINATE ; 
 scalar_t__ FUNC6 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,struct t4_cqe*,struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_3__*) ; 
 struct c4iw_qp* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*,struct t4_cqe**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 

void FUNC18(struct c4iw_cq *chp, struct c4iw_qp *flush_qhp)
{
	struct t4_cqe *hw_cqe, *swcqe, read_cqe;
	struct c4iw_qp *qhp;
	struct t4_swsqe *swsqe;
	int ret;

	FUNC12("cqid 0x%x\n", chp->cq.cqid);
	ret = FUNC16(&chp->cq, &hw_cqe);

	/*
	 * This logic is similar to poll_cq(), but not quite the same
	 * unfortunately.  Need to move pertinent HW CQEs to the SW CQ but
	 * also do any translation magic that poll_cq() normally does.
	 */
	while (!ret) {
		qhp = FUNC11(chp->rhp, FUNC1(hw_cqe));

		/*
		 * drop CQEs with no associated QP
		 */
		if (qhp == NULL)
			goto next_cqe;

		if (flush_qhp != qhp) {
			FUNC13(&qhp->lock);

			if (qhp->wq.flushed == 1)
				goto next_cqe;
		}

		if (FUNC0(hw_cqe) == FW_RI_TERMINATE)
			goto next_cqe;

		if (FUNC0(hw_cqe) == FW_RI_READ_RESP) {

			/* If we have reached here because of async
			 * event or other error, and have egress error
			 * then drop
			 */
			if (FUNC3(hw_cqe) == 1)
				goto next_cqe;

			/* drop peer2peer RTR reads.
			 */
			if (FUNC5(hw_cqe) == 1)
				goto next_cqe;

			/*
			 * Eat completions for unsignaled read WRs.
			 */
			if (!qhp->wq.sq.oldest_read->signaled) {
				FUNC7(&qhp->wq);
				goto next_cqe;
			}

			/*
			 * Don't write to the HWCQ, create a new read req CQE
			 * in local memory and move it into the swcq.
			 */
			FUNC9(&qhp->wq, hw_cqe, &read_cqe);
			hw_cqe = &read_cqe;
			FUNC7(&qhp->wq);
		}

		/* if its a SQ completion, then do the magic to move all the
		 * unsignaled and now in-order completions into the swcq.
		 */
		if (FUNC6(hw_cqe)) {
			swsqe = &qhp->wq.sq.sw_sq[FUNC4(hw_cqe)];
			swsqe->cqe = *hw_cqe;
			swsqe->complete = 1;
			FUNC10(&qhp->wq, &chp->cq);
		} else {
			swcqe = &chp->cq.sw_queue[chp->cq.sw_pidx];
			*swcqe = *hw_cqe;
			swcqe->header |= FUNC8(FUNC2(1));
			FUNC17(&chp->cq);
		}
next_cqe:
		FUNC15(&chp->cq);
		ret = FUNC16(&chp->cq, &hw_cqe);
		if (qhp && flush_qhp != qhp)
			FUNC14(&qhp->lock);
	}
}