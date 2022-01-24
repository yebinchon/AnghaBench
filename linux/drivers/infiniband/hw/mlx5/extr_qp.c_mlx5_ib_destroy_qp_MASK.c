#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_ib_qp {scalar_t__ qp_sub_type; } ;
struct mlx5_ib_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_qp {scalar_t__ qp_type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ IB_QPT_GSI ; 
 scalar_t__ MLX5_IB_QPT_DCT ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_qp*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_qp*) ; 
 int FUNC2 (struct mlx5_ib_qp*) ; 
 int FUNC3 (struct ib_qp*) ; 
 struct mlx5_ib_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_qp* FUNC5 (struct ib_qp*) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct ib_qp *qp, struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC4(qp->device);
	struct mlx5_ib_qp *mqp = FUNC5(qp);

	if (FUNC6(qp->qp_type == IB_QPT_GSI))
		return FUNC3(qp);

	if (mqp->qp_sub_type == MLX5_IB_QPT_DCT)
		return FUNC2(mqp);

	FUNC0(dev, mqp, udata);

	FUNC1(mqp);

	return 0;
}