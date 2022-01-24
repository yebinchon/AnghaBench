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
struct mlx5_ib_multiport_info {int /*<<< orphan*/  list; scalar_t__ ibdev; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  profile; } ;
typedef  void mlx5_core_dev ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MLX5_IB_STAGE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_multiport_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  mlx5_ib_multiport_mutex ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct mlx5_ib_multiport_info*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct mlx5_core_dev *mdev, void *context)
{
	struct mlx5_ib_multiport_info *mpi;
	struct mlx5_ib_dev *dev;

	if (FUNC0(mdev) && context == mdev) {
		FUNC6(mdev);
		return;
	}

	if (FUNC4(mdev)) {
		mpi = context;
		FUNC7(&mlx5_ib_multiport_mutex);
		if (mpi->ibdev)
			FUNC5(mpi->ibdev, mpi);
		FUNC3(&mpi->list);
		FUNC8(&mlx5_ib_multiport_mutex);
		FUNC2(mpi);
		return;
	}

	dev = context;
	FUNC1(dev, dev->profile, MLX5_IB_STAGE_MAX);
}