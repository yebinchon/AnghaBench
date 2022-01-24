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
typedef  int /*<<< orphan*/  u64 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 130 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 129 
#define  MLX5_VPORT_ACCESS_METHOD_NIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*) ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static int FUNC6(struct ib_device *ibdev,
					__be64 *sys_image_guid)
{
	struct mlx5_ib_dev *dev = FUNC5(ibdev);
	struct mlx5_core_dev *mdev = dev->mdev;
	u64 tmp;
	int err;

	switch (FUNC1(ibdev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		return FUNC3(ibdev,
							    sys_image_guid);

	case MLX5_VPORT_ACCESS_METHOD_HCA:
		err = FUNC2(mdev, &tmp);
		break;

	case MLX5_VPORT_ACCESS_METHOD_NIC:
		err = FUNC4(mdev, &tmp);
		break;

	default:
		return -EINVAL;
	}

	if (!err)
		*sys_image_guid = FUNC0(tmp);

	return err;

}