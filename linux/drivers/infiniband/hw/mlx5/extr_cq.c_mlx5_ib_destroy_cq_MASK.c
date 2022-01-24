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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct mlx5_ib_cq {int /*<<< orphan*/  mcq; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_cq*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_cq* FUNC3 (struct ib_cq*) ; 
 struct mlx5_ib_dev* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct ib_cq *cq, struct ib_udata *udata)
{
	struct mlx5_ib_dev *dev = FUNC4(cq->device);
	struct mlx5_ib_cq *mcq = FUNC3(cq);

	FUNC2(dev->mdev, &mcq->mcq);
	if (udata)
		FUNC1(mcq, udata);
	else
		FUNC0(dev, mcq);
}