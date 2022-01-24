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
struct mlx5_ib_rwq_ind_table {int /*<<< orphan*/  uid; int /*<<< orphan*/  rqtn; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_rwq_ind_table {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_rwq_ind_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_ib_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_rwq_ind_table* FUNC3 (struct ib_rwq_ind_table*) ; 

int FUNC4(struct ib_rwq_ind_table *ib_rwq_ind_tbl)
{
	struct mlx5_ib_rwq_ind_table *rwq_ind_tbl = FUNC3(ib_rwq_ind_tbl);
	struct mlx5_ib_dev *dev = FUNC2(ib_rwq_ind_tbl->device);

	FUNC1(dev->mdev, rwq_ind_tbl->rqtn, rwq_ind_tbl->uid);

	FUNC0(rwq_ind_tbl);
	return 0;
}