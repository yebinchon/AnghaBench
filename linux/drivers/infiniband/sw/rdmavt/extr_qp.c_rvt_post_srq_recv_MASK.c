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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {unsigned int max_sge; scalar_t__ size; struct rvt_krwq* kwq; } ;
struct rvt_srq {TYPE_3__ rq; } ;
struct rvt_rwqe {int num_sge; TYPE_1__* sg_list; int /*<<< orphan*/  wr_id; } ;
struct rvt_krwq {scalar_t__ head; int /*<<< orphan*/  p_lock; int /*<<< orphan*/  tail; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {int num_sge; TYPE_2__* sg_list; int /*<<< orphan*/  wr_id; struct ib_recv_wr* next; } ;
struct TYPE_5__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_srq* FUNC1 (struct ib_srq*) ; 
 struct rvt_rwqe* FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
		      const struct ib_recv_wr **bad_wr)
{
	struct rvt_srq *srq = FUNC1(ibsrq);
	struct rvt_krwq *wq;
	unsigned long flags;

	for (; wr; wr = wr->next) {
		struct rvt_rwqe *wqe;
		u32 next;
		int i;

		if ((unsigned)wr->num_sge > srq->rq.max_sge) {
			*bad_wr = wr;
			return -EINVAL;
		}

		FUNC4(&srq->rq.kwq->p_lock, flags);
		wq = srq->rq.kwq;
		next = wq->head + 1;
		if (next >= srq->rq.size)
			next = 0;
		if (next == FUNC0(wq->tail)) {
			FUNC5(&srq->rq.kwq->p_lock, flags);
			*bad_wr = wr;
			return -ENOMEM;
		}

		wqe = FUNC2(&srq->rq, wq->head);
		wqe->wr_id = wr->wr_id;
		wqe->num_sge = wr->num_sge;
		for (i = 0; i < wr->num_sge; i++) {
			wqe->sg_list[i].addr = wr->sg_list[i].addr;
			wqe->sg_list[i].length = wr->sg_list[i].length;
			wqe->sg_list[i].lkey = wr->sg_list[i].lkey;
		}
		/* Make sure queue entry is written before the head index. */
		FUNC3(&wq->head, next);
		FUNC5(&srq->rq.kwq->p_lock, flags);
	}
	return 0;
}