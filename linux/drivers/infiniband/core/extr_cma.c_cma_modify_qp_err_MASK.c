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
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;
struct rdma_id_private {int /*<<< orphan*/  qp_mutex; TYPE_1__ id; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rdma_id_private *id_priv)
{
	struct ib_qp_attr qp_attr;
	int ret;

	FUNC1(&id_priv->qp_mutex);
	if (!id_priv->id.qp) {
		ret = 0;
		goto out;
	}

	qp_attr.qp_state = IB_QPS_ERR;
	ret = FUNC0(id_priv->id.qp, &qp_attr, IB_QP_STATE);
out:
	FUNC2(&id_priv->qp_mutex);
	return ret;
}