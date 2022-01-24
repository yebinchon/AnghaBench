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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct mlx5_ib_dev {TYPE_2__* port; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  netdev_lock; struct net_device* netdev; } ;
struct TYPE_4__ {TYPE_1__ roce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct mlx5_core_dev* FUNC1 (struct mlx5_ib_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,int) ; 
 struct net_device* FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC6 (struct ib_device*) ; 

__attribute__((used)) static struct net_device *FUNC7(struct ib_device *device,
					     u8 port_num)
{
	struct mlx5_ib_dev *ibdev = FUNC6(device);
	struct net_device *ndev;
	struct mlx5_core_dev *mdev;

	mdev = FUNC1(ibdev, port_num, NULL);
	if (!mdev)
		return NULL;

	ndev = FUNC3(mdev);
	if (ndev)
		goto out;

	/* Ensure ndev does not disappear before we invoke dev_hold()
	 */
	FUNC4(&ibdev->port[port_num - 1].roce.netdev_lock);
	ndev = ibdev->port[port_num - 1].roce.netdev;
	if (ndev)
		FUNC0(ndev);
	FUNC5(&ibdev->port[port_num - 1].roce.netdev_lock);

out:
	FUNC2(ibdev, port_num);
	return ndev;
}