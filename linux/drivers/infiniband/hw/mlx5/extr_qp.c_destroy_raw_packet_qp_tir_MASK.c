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
typedef  int u32 ;
struct mlx5_ib_rq {int /*<<< orphan*/  tirn; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC ; 
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,int,int) ; 
 TYPE_1__* FUNC2 (struct ib_pd*) ; 

__attribute__((used)) static void FUNC3(struct mlx5_ib_dev *dev,
				      struct mlx5_ib_rq *rq,
				      u32 qp_flags_en,
				      struct ib_pd *pd)
{
	if (qp_flags_en & (MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC |
			   MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC))
		FUNC1(dev, false, true);
	FUNC0(dev->mdev, rq->tirn, FUNC2(pd)->uid);
}