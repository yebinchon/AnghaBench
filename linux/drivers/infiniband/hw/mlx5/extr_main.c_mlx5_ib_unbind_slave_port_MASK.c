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
struct TYPE_5__ {int /*<<< orphan*/  last_port_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  mpi_lock; int /*<<< orphan*/ * mpi; } ;
struct mlx5_ib_port {TYPE_2__ roce; TYPE_1__ mp; } ;
struct TYPE_6__ {int /*<<< orphan*/ * notifier_call; } ;
struct mlx5_ib_multiport_info {int mdev_refcnt; int unaffiliate; int /*<<< orphan*/  mdev; int /*<<< orphan*/  list; int /*<<< orphan*/  unref_comp; TYPE_3__ mdev_events; int /*<<< orphan*/ * ibdev; } ;
struct mlx5_ib_dev {struct mlx5_ib_port* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PORT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_dev*,char*,size_t) ; 
 int /*<<< orphan*/  mlx5_ib_multiport_mutex ; 
 int /*<<< orphan*/  mlx5_ib_unaffiliated_port_list ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_ib_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct mlx5_ib_dev *ibdev,
				      struct mlx5_ib_multiport_info *mpi)
{
	u8 port_num = FUNC3(mpi->mdev) - 1;
	struct mlx5_ib_port *port = &ibdev->port[port_num];
	int comps;
	int err;
	int i;

	FUNC2(&mlx5_ib_multiport_mutex);

	FUNC4(ibdev, port_num);

	FUNC10(&port->mp.mpi_lock);
	if (!mpi->ibdev) {
		FUNC11(&port->mp.mpi_lock);
		return;
	}

	mpi->ibdev = NULL;

	FUNC11(&port->mp.mpi_lock);
	if (mpi->mdev_events.notifier_call)
		FUNC8(mpi->mdev, &mpi->mdev_events);
	mpi->mdev_events.notifier_call = NULL;
	FUNC9(ibdev, port_num);
	FUNC10(&port->mp.mpi_lock);

	comps = mpi->mdev_refcnt;
	if (comps) {
		mpi->unaffiliate = true;
		FUNC0(&mpi->unref_comp);
		FUNC11(&port->mp.mpi_lock);

		for (i = 0; i < comps; i++)
			FUNC12(&mpi->unref_comp);

		FUNC10(&port->mp.mpi_lock);
		mpi->unaffiliate = false;
	}

	port->mp.mpi = NULL;

	FUNC1(&mpi->list, &mlx5_ib_unaffiliated_port_list);

	FUNC11(&port->mp.mpi_lock);

	err = FUNC7(mpi->mdev);

	FUNC5(ibdev, "unaffiliated port %d\n", port_num + 1);
	/* Log an error, still needed to cleanup the pointers and add
	 * it back to the list.
	 */
	if (err)
		FUNC6(ibdev, "Failed to unaffiliate port %u\n",
			    port_num + 1);

	ibdev->port[port_num].roce.last_port_state = IB_PORT_DOWN;
}