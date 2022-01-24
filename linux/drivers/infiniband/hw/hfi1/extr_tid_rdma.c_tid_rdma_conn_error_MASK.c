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
struct tid_rdma_params {int dummy; } ;
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  remote; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct hfi1_qp_priv {TYPE_2__ tid_rdma; TYPE_1__ opfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tid_rdma_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tid_rdma_params* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 

void FUNC4(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;
	struct tid_rdma_params *old;

	old = FUNC3(priv->tid_rdma.remote,
					FUNC2(&priv->opfn.lock));
	FUNC0(priv->tid_rdma.remote, NULL);
	if (old)
		FUNC1(old, rcu_head);
}