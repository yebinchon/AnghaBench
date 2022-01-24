#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_ib_dev {int num_ports; int /*<<< orphan*/  mdev; int /*<<< orphan*/  ib_dev_list; TYPE_2__* port; int /*<<< orphan*/  ib_dev; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;
struct TYPE_3__ {int /*<<< orphan*/ * mpi; } ;
struct TYPE_4__ {TYPE_1__ mp; } ;

/* Variables and functions */
 int IB_LINK_LAYER_ETHERNET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*,...) ; 
 int /*<<< orphan*/  mlx5_ib_multiport_mutex ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mlx5_ib_dev *dev)
{
	int port_num = FUNC3(dev->mdev) - 1;
	enum rdma_link_layer ll = FUNC5(&dev->ib_dev,
							  port_num + 1);
	int i;

	if (!FUNC2(dev->mdev) || ll != IB_LINK_LAYER_ETHERNET)
		return;

	FUNC8(&mlx5_ib_multiport_mutex);
	for (i = 0; i < dev->num_ports; i++) {
		if (dev->port[i].mp.mpi) {
			/* Destroy the native port stub */
			if (i == port_num) {
				FUNC0(dev->port[i].mp.mpi);
				dev->port[i].mp.mpi = NULL;
			} else {
				FUNC4(dev, "unbinding port_num: %d\n", i + 1);
				FUNC6(dev, dev->port[i].mp.mpi);
			}
		}
	}

	FUNC4(dev, "removing from devlist\n");
	FUNC1(&dev->ib_dev_list);
	FUNC9(&mlx5_ib_multiport_mutex);

	FUNC7(dev->mdev);
}