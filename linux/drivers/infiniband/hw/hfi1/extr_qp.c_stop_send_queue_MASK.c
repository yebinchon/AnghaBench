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
struct rvt_qp {struct hfi1_qp_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  trigger_work; } ;
struct hfi1_qp_priv {TYPE_1__ tid_rdma; int /*<<< orphan*/  s_iowait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_qp*) ; 

void FUNC3(struct rvt_qp *qp)
{
	struct hfi1_qp_priv *priv = qp->priv;

	FUNC1(&priv->s_iowait);
	if (FUNC0(&priv->tid_rdma.trigger_work))
		FUNC2(qp);
}