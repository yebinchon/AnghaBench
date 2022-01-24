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
struct mlx5_ib_rwq {int /*<<< orphan*/  core_qp; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_wq {int /*<<< orphan*/  pd; int /*<<< orphan*/  device; } ;
struct ib_udata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,struct mlx5_ib_rwq*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_rwq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_rwq* FUNC4 (struct ib_wq*) ; 

void FUNC5(struct ib_wq *wq, struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC3(wq->device);
	struct mlx5_ib_rwq *rwq = FUNC4(wq);

	FUNC2(dev->mdev, &rwq->core_qp);
	FUNC0(dev, wq->pd, rwq, udata);
	FUNC1(rwq);
}