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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 129 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 128 
 int FUNC0 (struct ib_device*) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,union ib_gid*) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int,union ib_gid*) ; 
 struct mlx5_ib_dev* FUNC3 (struct ib_device*) ; 

__attribute__((used)) static int FUNC4(struct ib_device *ibdev, u8 port, int index,
			     union ib_gid *gid)
{
	struct mlx5_ib_dev *dev = FUNC3(ibdev);
	struct mlx5_core_dev *mdev = dev->mdev;

	switch (FUNC0(ibdev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		return FUNC2(ibdev, port, index, gid);

	case MLX5_VPORT_ACCESS_METHOD_HCA:
		return FUNC1(mdev, 0, port, 0, index, gid);

	default:
		return -EINVAL;
	}

}