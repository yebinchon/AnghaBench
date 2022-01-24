#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct mlx5_core_dev* dev; int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct TYPE_11__ {int phys_port_cnt; TYPE_4__ dev; int /*<<< orphan*/  num_comp_vectors; scalar_t__ local_dma_lkey; int /*<<< orphan*/  node_type; } ;
struct mlx5_ib_dev {int num_ports; int /*<<< orphan*/  mr_srcu; TYPE_6__ dm; int /*<<< orphan*/  reset_flow_resource_lock; int /*<<< orphan*/  qp_list; int /*<<< orphan*/  cap_mask_mutex; TYPE_5__ ib_dev; TYPE_3__* port; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int /*<<< orphan*/  device; } ;
struct TYPE_8__ {int native_port_num; int /*<<< orphan*/  last_port_state; struct mlx5_ib_dev* dev; int /*<<< orphan*/  netdev_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  mpi_lock; } ;
struct TYPE_9__ {TYPE_2__ roce; TYPE_1__ mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_ON_DEMAND_PAGING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_PORT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_NODE_IB_CA ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*) ; 
 int FUNC3 (struct mlx5_ib_dev*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_ib_dev*) ; 
 int FUNC9 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_ib_dev*) ; 
 scalar_t__ FUNC11 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mlx5_ib_dev *dev)
{
	struct mlx5_core_dev *mdev = dev->mdev;
	int err;
	int i;

	for (i = 0; i < dev->num_ports; i++) {
		FUNC15(&dev->port[i].mp.mpi_lock);
		FUNC13(&dev->port[i].roce.netdev_lock);
		dev->port[i].roce.dev = dev;
		dev->port[i].roce.native_port_num = i + 1;
		dev->port[i].roce.last_port_state = IB_PORT_DOWN;
	}

	FUNC10(dev);

	err = FUNC9(dev);
	if (err)
		return err;

	err = FUNC14(dev);
	if (err)
		return err;

	if (!FUNC6(mdev)) {
		for (i = 1; i <= dev->num_ports; i++) {
			err = FUNC3(dev, i);
			if (err)
				break;
		}
	} else {
		err = FUNC3(dev, FUNC7(mdev));
	}
	if (err)
		goto err_mp;

	if (FUNC11(dev))
		FUNC2(dev);

	dev->ib_dev.node_type		= RDMA_NODE_IB_CA;
	dev->ib_dev.local_dma_lkey	= 0 /* not supported for now */;
	dev->ib_dev.phys_port_cnt	= dev->num_ports;
	dev->ib_dev.num_comp_vectors    = FUNC5(mdev);
	dev->ib_dev.dev.parent		= mdev->device;

	FUNC12(&dev->cap_mask_mutex);
	FUNC0(&dev->qp_list);
	FUNC15(&dev->reset_flow_resource_lock);

	FUNC15(&dev->dm.lock);
	dev->dm.dev = mdev;

	if (FUNC1(CONFIG_INFINIBAND_ON_DEMAND_PAGING)) {
		err = FUNC4(&dev->mr_srcu);
		if (err)
			goto err_mp;
	}

	return 0;

err_mp:
	FUNC8(dev);

	return -ENOMEM;
}