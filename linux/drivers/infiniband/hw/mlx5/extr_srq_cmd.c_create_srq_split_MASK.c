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
struct mlx5_srq_attr {int dummy; } ;
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct TYPE_4__ {int res; } ;
struct mlx5_core_srq {TYPE_2__ common; } ;
struct TYPE_3__ {int /*<<< orphan*/  issi; } ;

/* Variables and functions */
#define  MLX5_RES_XRQ 129 
#define  MLX5_RES_XSRQ 128 
 int FUNC0 (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ; 
 int FUNC1 (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ; 
 int FUNC2 (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ; 
 int FUNC3 (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ; 

__attribute__((used)) static int FUNC4(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
			    struct mlx5_srq_attr *in)
{
	if (!dev->mdev->issi)
		return FUNC1(dev, srq, in);
	switch (srq->common.res) {
	case MLX5_RES_XSRQ:
		return FUNC2(dev, srq, in);
	case MLX5_RES_XRQ:
		return FUNC3(dev, srq, in);
	default:
		return FUNC0(dev, srq, in);
	}
}