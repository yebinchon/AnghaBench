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
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; int /*<<< orphan*/  ib_dev; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 130 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 129 
#define  MLX5_VPORT_ACCESS_METHOD_NIC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5_ib_dev*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mlx5_ib_dev *dev,
				__be64 *node_guid)
{
	u64 tmp;
	int err;

	switch (FUNC1(&dev->ib_dev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		return FUNC3(dev, node_guid);

	case MLX5_VPORT_ACCESS_METHOD_HCA:
		err = FUNC2(dev->mdev, &tmp);
		break;

	case MLX5_VPORT_ACCESS_METHOD_NIC:
		err = FUNC4(dev->mdev, &tmp);
		break;

	default:
		return -EINVAL;
	}

	if (!err)
		*node_guid = FUNC0(tmp);

	return err;
}