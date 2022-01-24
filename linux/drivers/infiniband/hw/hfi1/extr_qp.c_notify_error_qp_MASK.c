#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rvt_qp {int s_flags; int /*<<< orphan*/ * s_rdma_mr; scalar_t__ s_hdrwords; struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  list; } ;
struct hfi1_qp_priv {int s_flags; TYPE_1__ s_iowait; } ;
typedef  int /*<<< orphan*/  seqlock_t ;

/* Variables and functions */
 int HFI1_S_ANY_WAIT_IO ; 
 int /*<<< orphan*/  IOWAIT_PENDING_IB ; 
 int /*<<< orphan*/  IOWAIT_PENDING_TID ; 
 int RVT_S_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;
	seqlock_t *lock = priv->s_iowait.lock;

	if (lock) {
		FUNC6(lock);
		if (!FUNC3(&priv->s_iowait.list) &&
		    !(qp->s_flags & RVT_S_BUSY) &&
		    !(priv->s_flags & RVT_S_BUSY)) {
			qp->s_flags &= ~HFI1_S_ANY_WAIT_IO;
			FUNC1(&priv->s_iowait, IOWAIT_PENDING_IB);
			FUNC1(&priv->s_iowait, IOWAIT_PENDING_TID);
			FUNC2(&priv->s_iowait.list);
			priv->s_iowait.lock = NULL;
			FUNC5(qp);
		}
		FUNC7(lock);
	}

	if (!(qp->s_flags & RVT_S_BUSY) && !(priv->s_flags & RVT_S_BUSY)) {
		qp->s_hdrwords = 0;
		if (qp->s_rdma_mr) {
			FUNC4(qp->s_rdma_mr);
			qp->s_rdma_mr = NULL;
		}
		FUNC0(qp);
	}
}