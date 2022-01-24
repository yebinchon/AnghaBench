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
struct TYPE_2__ {int /*<<< orphan*/  done; } ;
struct mlx5_ib_drain_cqe {int /*<<< orphan*/  done; TYPE_1__ cqe; } ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {scalar_t__ state; } ;
struct ib_recv_wr {TYPE_1__* wr_cqe; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int /*<<< orphan*/  device; struct ib_cq* recv_cq; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_ERR ; 
 int /*<<< orphan*/  IB_QP_STATE ; 
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (struct ib_qp*,struct ib_recv_wr*,struct ib_recv_wr const**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*,struct mlx5_ib_drain_cqe*,struct mlx5_ib_dev*) ; 
 int FUNC3 (struct ib_qp*,struct ib_qp_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx5_ib_drain_qp_done ; 
 struct mlx5_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct ib_qp *qp)
{
	struct ib_cq *cq = qp->recv_cq;
	struct ib_qp_attr attr = { .qp_state = IB_QPS_ERR };
	struct mlx5_ib_drain_cqe rdrain;
	struct ib_recv_wr rwr = {};
	const struct ib_recv_wr *bad_rwr;
	int ret;
	struct mlx5_ib_dev *dev = FUNC5(qp->device);
	struct mlx5_core_dev *mdev = dev->mdev;

	ret = FUNC3(qp, &attr, IB_QP_STATE);
	if (ret && mdev->state != MLX5_DEVICE_STATE_INTERNAL_ERROR) {
		FUNC0(ret, "failed to drain recv queue: %d\n", ret);
		return;
	}

	rwr.wr_cqe = &rdrain.cqe;
	rdrain.cqe.done = mlx5_ib_drain_qp_done;
	FUNC4(&rdrain.done);

	ret = FUNC1(qp, &rwr, &bad_rwr, true);
	if (ret) {
		FUNC0(ret, "failed to drain recv queue: %d\n", ret);
		return;
	}

	FUNC2(cq, &rdrain, dev);
}