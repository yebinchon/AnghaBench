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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  mpi_lock; struct mlx5_ib_multiport_info* mpi; } ;
struct mlx5_ib_port {TYPE_1__ mp; } ;
struct mlx5_ib_multiport_info {int /*<<< orphan*/  unref_comp; scalar_t__ unaffiliate; int /*<<< orphan*/  mdev_refcnt; scalar_t__ is_master; } ;
struct mlx5_ib_dev {struct mlx5_ib_port* port; int /*<<< orphan*/  mdev; int /*<<< orphan*/  ib_dev; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_ETHERNET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx5_ib_dev *ibdev, u8 port_num)
{
	enum rdma_link_layer ll = FUNC2(&ibdev->ib_dev,
							  port_num);
	struct mlx5_ib_multiport_info *mpi;
	struct mlx5_ib_port *port;

	if (!FUNC1(ibdev->mdev) || ll != IB_LINK_LAYER_ETHERNET)
		return;

	port = &ibdev->port[port_num - 1];

	FUNC3(&port->mp.mpi_lock);
	mpi = ibdev->port[port_num - 1].mp.mpi;
	if (mpi->is_master)
		goto out;

	mpi->mdev_refcnt--;
	if (mpi->unaffiliate)
		FUNC0(&mpi->unref_comp);
out:
	FUNC4(&port->mp.mpi_lock);
}