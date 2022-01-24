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
struct mlx5_ib_gsi_qp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rx_qp; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ IB_QPS_RTS ; 
 struct mlx5_ib_gsi_qp* FUNC0 (struct ib_qp*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ib_qp_attr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_gsi_qp*) ; 
 struct mlx5_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct ib_qp *qp, struct ib_qp_attr *attr,
			  int attr_mask)
{
	struct mlx5_ib_dev *dev = FUNC7(qp->device);
	struct mlx5_ib_gsi_qp *gsi = FUNC0(qp);
	int ret;

	FUNC2(dev, "modifying GSI QP to state %d\n", attr->qp_state);

	FUNC4(&gsi->mutex);
	ret = FUNC1(gsi->rx_qp, attr, attr_mask);
	if (ret) {
		FUNC3(dev, "unable to modify GSI rx QP: %d\n", ret);
		goto unlock;
	}

	if (FUNC8(gsi->rx_qp)->state == IB_QPS_RTS)
		FUNC6(gsi);

unlock:
	FUNC5(&gsi->mutex);

	return ret;
}