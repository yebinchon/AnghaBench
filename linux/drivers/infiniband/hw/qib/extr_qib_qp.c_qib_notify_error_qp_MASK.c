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
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {int s_flags; int /*<<< orphan*/ * s_rdma_mr; scalar_t__ s_hdrwords; TYPE_1__ ibqp; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int /*<<< orphan*/ * s_tx; int /*<<< orphan*/  iowait; } ;
struct TYPE_4__ {int /*<<< orphan*/  pending_lock; } ;
struct qib_ibdev {TYPE_2__ rdi; } ;

/* Variables and functions */
 int RVT_S_ANY_WAIT_IO ; 
 int RVT_S_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct qib_ibdev* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct rvt_qp *qp)
{
	struct qib_qp_priv *priv = qp->priv;
	struct qib_ibdev *dev = FUNC6(qp->ibqp.device);

	FUNC4(&dev->rdi.pending_lock);
	if (!FUNC1(&priv->iowait) && !(qp->s_flags & RVT_S_BUSY)) {
		qp->s_flags &= ~RVT_S_ANY_WAIT_IO;
		FUNC0(&priv->iowait);
	}
	FUNC5(&dev->rdi.pending_lock);

	if (!(qp->s_flags & RVT_S_BUSY)) {
		qp->s_hdrwords = 0;
		if (qp->s_rdma_mr) {
			FUNC3(qp->s_rdma_mr);
			qp->s_rdma_mr = NULL;
		}
		if (priv->s_tx) {
			FUNC2(priv->s_tx);
			priv->s_tx = NULL;
		}
	}
}