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
typedef  union ib_gid {int dummy; } ib_gid ;
struct net_device {int dummy; } ;
struct mlx4_ib_qp {int port; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct net_device** netdevs; } ;
struct mlx4_ib_dev {TYPE_1__ iboe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx4_ib_dev *mdev, struct mlx4_ib_qp *mqp,
		   union ib_gid *gid)
{
	struct net_device *ndev;
	int ret = 0;

	if (!mqp->port)
		return 0;

	FUNC2(&mdev->iboe.lock);
	ndev = mdev->iboe.netdevs[mqp->port - 1];
	if (ndev)
		FUNC0(ndev);
	FUNC3(&mdev->iboe.lock);

	if (ndev) {
		ret = 1;
		FUNC1(ndev);
	}

	return ret;
}