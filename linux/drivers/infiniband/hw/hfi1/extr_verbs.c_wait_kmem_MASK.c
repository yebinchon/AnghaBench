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
struct rvt_qp {size_t state; int /*<<< orphan*/  s_lock; } ;
struct hfi1_pkt_state {TYPE_3__* wait; TYPE_2__* s_txreq; } ;
struct hfi1_ibdev {int /*<<< orphan*/  iowait_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_head; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct TYPE_5__ {TYPE_1__ txreq; } ;

/* Variables and functions */
 int EBUSY ; 
 int RVT_PROCESS_RECV_OK ; 
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*) ; 
 int* ib_rvt_state_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hfi1_ibdev *dev,
		     struct rvt_qp *qp,
		     struct hfi1_pkt_state *ps)
{
	unsigned long flags;
	int ret = 0;

	FUNC3(&qp->s_lock, flags);
	if (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK) {
		FUNC5(&dev->iowait_lock);
		FUNC2(&ps->s_txreq->txreq.list,
			      &ps->wait->tx_head);
		FUNC1(qp);
		FUNC6(&dev->iowait_lock);
		FUNC0(qp, ps->wait);
		ret = -EBUSY;
	}
	FUNC4(&qp->s_lock, flags);

	return ret;
}