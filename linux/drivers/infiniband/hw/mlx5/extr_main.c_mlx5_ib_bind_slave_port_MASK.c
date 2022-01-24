#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct TYPE_6__ {int /*<<< orphan*/ * notifier_call; } ;
struct mlx5_ib_multiport_info {TYPE_3__ mdev_events; int /*<<< orphan*/  mdev; struct mlx5_ib_dev* ibdev; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; TYPE_2__* port; } ;
struct TYPE_4__ {int /*<<< orphan*/  mpi_lock; struct mlx5_ib_multiport_info* mpi; } ;
struct TYPE_5__ {TYPE_1__ mp; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_ib_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5_ib_dev*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,size_t) ; 
 int /*<<< orphan*/ * mlx5_ib_event_slave_port ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,size_t) ; 
 int /*<<< orphan*/  mlx5_ib_multiport_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*,struct mlx5_ib_multiport_info*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC12(struct mlx5_ib_dev *ibdev,
				    struct mlx5_ib_multiport_info *mpi)
{
	u8 port_num = FUNC3(mpi->mdev) - 1;
	int err;

	FUNC1(&mlx5_ib_multiport_mutex);

	FUNC10(&ibdev->port[port_num].mp.mpi_lock);
	if (ibdev->port[port_num].mp.mpi) {
		FUNC4(ibdev, "port %d already affiliated.\n",
			    port_num + 1);
		FUNC11(&ibdev->port[port_num].mp.mpi_lock);
		return false;
	}

	ibdev->port[port_num].mp.mpi = mpi;
	mpi->ibdev = ibdev;
	mpi->mdev_events.notifier_call = NULL;
	FUNC11(&ibdev->port[port_num].mp.mpi_lock);

	err = FUNC8(ibdev->mdev, mpi->mdev);
	if (err)
		goto unbind;

	err = FUNC0(ibdev, FUNC3(mpi->mdev));
	if (err)
		goto unbind;

	err = FUNC2(ibdev, port_num);
	if (err) {
		FUNC5(ibdev, "failed adding netdev notifier for port %u\n",
			    port_num + 1);
		goto unbind;
	}

	mpi->mdev_events.notifier_call = mlx5_ib_event_slave_port;
	FUNC9(mpi->mdev, &mpi->mdev_events);

	FUNC6(ibdev, port_num);

	return true;

unbind:
	FUNC7(ibdev, mpi);
	return false;
}