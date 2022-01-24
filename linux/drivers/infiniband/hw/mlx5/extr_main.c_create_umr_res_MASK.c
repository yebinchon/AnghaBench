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
struct TYPE_4__ {struct ib_qp* pd; struct ib_qp* cq; struct ib_qp* qp; int /*<<< orphan*/  sem; } ;
struct mlx5_ib_dev {TYPE_2__ umrc; int /*<<< orphan*/  ib_dev; } ;
struct TYPE_3__ {int max_send_sge; int /*<<< orphan*/  max_send_wr; } ;
struct ib_qp_init_attr {int port_num; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  path_mtu; struct ib_qp* recv_cq; struct ib_qp* send_cq; void* qp_type; TYPE_1__ cap; int /*<<< orphan*/  sq_sig_type; } ;
struct ib_qp_attr {int port_num; int /*<<< orphan*/  qp_state; int /*<<< orphan*/  path_mtu; struct ib_qp* recv_cq; struct ib_qp* send_cq; void* qp_type; TYPE_1__ cap; int /*<<< orphan*/  sq_sig_type; } ;
struct ib_qp {struct ib_qp* recv_cq; struct ib_qp* send_cq; void* qp_type; int /*<<< orphan*/ * uobject; struct ib_qp* real_qp; int /*<<< orphan*/ * device; } ;
struct ib_pd {struct ib_pd* recv_cq; struct ib_pd* send_cq; void* qp_type; int /*<<< orphan*/ * uobject; struct ib_pd* real_qp; int /*<<< orphan*/ * device; } ;
struct ib_cq {struct ib_cq* recv_cq; struct ib_cq* send_cq; void* qp_type; int /*<<< orphan*/ * uobject; struct ib_cq* real_qp; int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_MTU_256 ; 
 int /*<<< orphan*/  IB_POLL_SOFTIRQ ; 
 int /*<<< orphan*/  IB_QPS_INIT ; 
 int /*<<< orphan*/  IB_QPS_RTR ; 
 int /*<<< orphan*/  IB_QPS_RTS ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_PORT ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  IB_SIGNAL_ALL_WR ; 
 scalar_t__ FUNC0 (struct ib_qp*) ; 
 int /*<<< orphan*/  MAX_UMR_WR ; 
 void* MLX5_IB_QPT_REG_UMR ; 
 int FUNC1 (struct ib_qp*) ; 
 struct ib_qp* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_qp* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp_init_attr*) ; 
 struct ib_qp_init_attr* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 struct ib_qp* FUNC9 (struct ib_qp*,struct ib_qp_init_attr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_qp*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct ib_qp*,struct ib_qp_init_attr*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_ib_dev*,char*,int) ; 
 int FUNC14 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct mlx5_ib_dev *dev)
{
	struct ib_qp_init_attr *init_attr = NULL;
	struct ib_qp_attr *attr = NULL;
	struct ib_pd *pd;
	struct ib_cq *cq;
	struct ib_qp *qp;
	int ret;

	attr = FUNC7(sizeof(*attr), GFP_KERNEL);
	init_attr = FUNC7(sizeof(*init_attr), GFP_KERNEL);
	if (!attr || !init_attr) {
		ret = -ENOMEM;
		goto error_0;
	}

	pd = FUNC3(&dev->ib_dev, 0);
	if (FUNC0(pd)) {
		FUNC10(dev, "Couldn't create PD for sync UMR QP\n");
		ret = FUNC1(pd);
		goto error_0;
	}

	cq = FUNC2(&dev->ib_dev, NULL, 128, 0, IB_POLL_SOFTIRQ);
	if (FUNC0(cq)) {
		FUNC10(dev, "Couldn't create CQ for sync UMR QP\n");
		ret = FUNC1(cq);
		goto error_2;
	}

	init_attr->send_cq = cq;
	init_attr->recv_cq = cq;
	init_attr->sq_sig_type = IB_SIGNAL_ALL_WR;
	init_attr->cap.max_send_wr = MAX_UMR_WR;
	init_attr->cap.max_send_sge = 1;
	init_attr->qp_type = MLX5_IB_QPT_REG_UMR;
	init_attr->port_num = 1;
	qp = FUNC9(pd, init_attr, NULL);
	if (FUNC0(qp)) {
		FUNC10(dev, "Couldn't create sync UMR QP\n");
		ret = FUNC1(qp);
		goto error_3;
	}
	qp->device     = &dev->ib_dev;
	qp->real_qp    = qp;
	qp->uobject    = NULL;
	qp->qp_type    = MLX5_IB_QPT_REG_UMR;
	qp->send_cq    = init_attr->send_cq;
	qp->recv_cq    = init_attr->recv_cq;

	attr->qp_state = IB_QPS_INIT;
	attr->port_num = 1;
	ret = FUNC12(qp, attr, IB_QP_STATE | IB_QP_PKEY_INDEX |
				IB_QP_PORT, NULL);
	if (ret) {
		FUNC10(dev, "Couldn't modify UMR QP\n");
		goto error_4;
	}

	FUNC8(attr, 0, sizeof(*attr));
	attr->qp_state = IB_QPS_RTR;
	attr->path_mtu = IB_MTU_256;

	ret = FUNC12(qp, attr, IB_QP_STATE, NULL);
	if (ret) {
		FUNC10(dev, "Couldn't modify umr QP to rtr\n");
		goto error_4;
	}

	FUNC8(attr, 0, sizeof(*attr));
	attr->qp_state = IB_QPS_RTS;
	ret = FUNC12(qp, attr, IB_QP_STATE, NULL);
	if (ret) {
		FUNC10(dev, "Couldn't modify umr QP to rts\n");
		goto error_4;
	}

	dev->umrc.qp = qp;
	dev->umrc.cq = cq;
	dev->umrc.pd = pd;

	FUNC15(&dev->umrc.sem, MAX_UMR_WR);
	ret = FUNC14(dev);
	if (ret) {
		FUNC13(dev, "mr cache init failed %d\n", ret);
		goto error_4;
	}

	FUNC6(attr);
	FUNC6(init_attr);

	return 0;

error_4:
	FUNC11(qp, NULL);
	dev->umrc.qp = NULL;

error_3:
	FUNC5(cq);
	dev->umrc.cq = NULL;

error_2:
	FUNC4(pd);
	dev->umrc.pd = NULL;

error_0:
	FUNC6(attr);
	FUNC6(init_attr);
	return ret;
}