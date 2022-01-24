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
typedef  int u8 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_port_attr {unsigned int gid_tbl_len; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 130 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 129 
#define  MLX5_VPORT_ACCESS_METHOD_NIC 128 
 unsigned int FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (struct ib_device*) ; 
 struct mlx5_core_dev* FUNC2 (struct mlx5_ib_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,int) ; 
 int FUNC4 (struct ib_device*,int,struct ib_port_attr*) ; 
 int FUNC5 (struct ib_device*,int,struct ib_port_attr*) ; 
 int FUNC6 (struct ib_device*,int,struct ib_port_attr*) ; 
 struct mlx5_ib_dev* FUNC7 (struct ib_device*) ; 

int FUNC8(struct ib_device *ibdev, u8 port,
		       struct ib_port_attr *props)
{
	unsigned int count;
	int ret;

	switch (FUNC1(ibdev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		ret = FUNC5(ibdev, port, props);
		break;

	case MLX5_VPORT_ACCESS_METHOD_HCA:
		ret = FUNC4(ibdev, port, props);
		break;

	case MLX5_VPORT_ACCESS_METHOD_NIC:
		ret = FUNC6(ibdev, port, props);
		break;

	default:
		ret = -EINVAL;
	}

	if (!ret && props) {
		struct mlx5_ib_dev *dev = FUNC7(ibdev);
		struct mlx5_core_dev *mdev;
		bool put_mdev = true;

		mdev = FUNC2(dev, port, NULL);
		if (!mdev) {
			/* If the port isn't affiliated yet query the master.
			 * The master and slave will have the same values.
			 */
			mdev = dev->mdev;
			port = 1;
			put_mdev = false;
		}
		count = FUNC0(mdev);
		if (put_mdev)
			FUNC3(dev, port);
		props->gid_tbl_len -= count;
	}
	return ret;
}