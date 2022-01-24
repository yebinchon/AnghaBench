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
struct mlx5_ib_dev {int lag_active; TYPE_1__* flow_db; struct mlx5_core_dev* mdev; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {struct mlx5_flow_table* lag_demux_ft; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_LAG ; 
 int FUNC1 (struct mlx5_flow_table*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 struct mlx5_flow_table* FUNC4 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 

__attribute__((used)) static int FUNC7(struct mlx5_ib_dev *dev)
{
	struct mlx5_core_dev *mdev = dev->mdev;
	struct mlx5_flow_namespace *ns = FUNC5(mdev,
								 MLX5_FLOW_NAMESPACE_LAG);
	struct mlx5_flow_table *ft;
	int err;

	if (!ns || !FUNC6(mdev))
		return 0;

	err = FUNC2(mdev);
	if (err)
		return err;

	ft = FUNC4(ns, 0, 0);
	if (FUNC0(ft)) {
		err = FUNC1(ft);
		goto err_destroy_vport_lag;
	}

	dev->flow_db->lag_demux_ft = ft;
	dev->lag_active = true;
	return 0;

err_destroy_vport_lag:
	FUNC3(mdev);
	return err;
}