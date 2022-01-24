#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pd; } ;
struct TYPE_4__ {int /*<<< orphan*/  tirn; } ;
struct mlx5_ib_qp {int flags_en; TYPE_2__ ibqp; TYPE_1__ rss_qp; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC ; 
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,int,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
	if (qp->flags_en & (MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC |
			    MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC))
		FUNC1(dev, false, true);
	FUNC0(dev->mdev, qp->rss_qp.tirn,
			     FUNC2(qp->ibqp.pd)->uid);
}