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
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_ETHERNET ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*) ; 
 int FUNC3 (struct mlx5_ib_dev*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  port_type ; 

__attribute__((used)) static int FUNC5(struct mlx5_ib_dev *dev)
{
	struct mlx5_core_dev *mdev = dev->mdev;
	enum rdma_link_layer ll;
	int port_type_cap;
	int err;

	port_type_cap = FUNC0(mdev, port_type);
	ll = FUNC4(port_type_cap);

	if (ll == IB_LINK_LAYER_ETHERNET) {
		err = FUNC3(dev);
		if (err)
			return err;

		err = FUNC1(dev);
		if (err)
			goto cleanup;
	}

	return 0;
cleanup:
	FUNC2(dev);

	return err;
}