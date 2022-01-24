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
struct mlx5_reg_node_desc {int dummy; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_device_modify {int /*<<< orphan*/  node_desc; } ;
struct ib_device {struct mlx5_reg_node_desc* node_desc; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int IB_DEVICE_MODIFY_NODE_DESC ; 
 int /*<<< orphan*/  IB_DEVICE_NODE_DESC_MAX ; 
 int /*<<< orphan*/  MLX5_REG_NODE_DESC ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_reg_node_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct mlx5_reg_node_desc*,int,struct mlx5_reg_node_desc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlx5_ib_dev* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static int FUNC3(struct ib_device *ibdev, int mask,
				 struct ib_device_modify *props)
{
	struct mlx5_ib_dev *dev = FUNC2(ibdev);
	struct mlx5_reg_node_desc in;
	struct mlx5_reg_node_desc out;
	int err;

	if (mask & ~IB_DEVICE_MODIFY_NODE_DESC)
		return -EOPNOTSUPP;

	if (!(mask & IB_DEVICE_MODIFY_NODE_DESC))
		return 0;

	/*
	 * If possible, pass node desc to FW, so it can generate
	 * a 144 trap.  If cmd fails, just ignore.
	 */
	FUNC0(&in, props->node_desc, IB_DEVICE_NODE_DESC_MAX);
	err = FUNC1(dev->mdev, &in, sizeof(in), &out,
				   sizeof(out), MLX5_REG_NODE_DESC, 0, 1);
	if (err)
		return err;

	FUNC0(ibdev->node_desc, props->node_desc, IB_DEVICE_NODE_DESC_MAX);

	return err;
}