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
struct rvt_qp {size_t state; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_flags; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int /*<<< orphan*/  iowait; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending_lock; } ;
struct qib_ibdev {TYPE_1__ rdi; int /*<<< orphan*/  memwait; int /*<<< orphan*/  mem_timer; } ;

/* Variables and functions */
 int EBUSY ; 
 int RVT_PROCESS_RECV_OK ; 
 int /*<<< orphan*/  RVT_S_BUSY ; 
 int /*<<< orphan*/  RVT_S_WAIT_KMEM ; 
 int* ib_rvt_state_ops ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct qib_ibdev *dev, struct rvt_qp *qp)
{
	struct qib_qp_priv *priv = qp->priv;
	unsigned long flags;
	int ret = 0;

	FUNC4(&qp->s_lock, flags);
	if (ib_rvt_state_ops[qp->state] & RVT_PROCESS_RECV_OK) {
		FUNC3(&dev->rdi.pending_lock);
		if (FUNC1(&priv->iowait)) {
			if (FUNC1(&dev->memwait))
				FUNC2(&dev->mem_timer, jiffies + 1);
			qp->s_flags |= RVT_S_WAIT_KMEM;
			FUNC0(&priv->iowait, &dev->memwait);
		}
		FUNC5(&dev->rdi.pending_lock);
		qp->s_flags &= ~RVT_S_BUSY;
		ret = -EBUSY;
	}
	FUNC6(&qp->s_lock, flags);

	return ret;
}