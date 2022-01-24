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
struct rvt_qp {TYPE_1__ ibqp; struct qib_qp_priv* priv; } ;
struct qib_qp_priv {int /*<<< orphan*/  iowait; } ;
struct TYPE_4__ {int /*<<< orphan*/  pending_lock; } ;
struct qib_ibdev {TYPE_2__ rdi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct qib_ibdev* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct rvt_qp *qp)
{
	struct qib_qp_priv *priv = qp->priv;
	struct qib_ibdev *dev = FUNC4(qp->ibqp.device);

	FUNC2(&dev->rdi.pending_lock);
	if (!FUNC1(&priv->iowait))
		FUNC0(&priv->iowait);
	FUNC3(&dev->rdi.pending_lock);
}