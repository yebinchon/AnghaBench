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
struct ib_qp {struct ib_device* device; } ;
struct rvt_qp {int /*<<< orphan*/  s_flags; struct ib_qp ibqp; struct hfi1_qp_priv* priv; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * lock; int /*<<< orphan*/  list; } ;
struct hfi1_qp_priv {TYPE_1__ s_iowait; } ;
struct hfi1_ibdev {int /*<<< orphan*/  iowait_lock; int /*<<< orphan*/  memwait; int /*<<< orphan*/  mem_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  RVT_S_WAIT_KMEM ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_qp*) ; 
 struct hfi1_ibdev* FUNC4 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_qp*,int /*<<< orphan*/ ) ; 

void FUNC6(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct ib_qp *ibqp = &qp->ibqp;
	struct ib_device *ibdev = ibqp->device;
	struct hfi1_ibdev *dev = FUNC4(ibdev);

	if (FUNC1(&priv->s_iowait.list)) {
		if (FUNC1(&dev->memwait))
			FUNC2(&dev->mem_timer, jiffies + 1);
		qp->s_flags |= RVT_S_WAIT_KMEM;
		FUNC0(&priv->s_iowait.list, &dev->memwait);
		priv->s_iowait.lock = &dev->iowait_lock;
		FUNC5(qp, RVT_S_WAIT_KMEM);
		FUNC3(qp);
	}
}