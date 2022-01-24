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
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct mlx5_ib_mw {TYPE_3__ mmkey; } ;
struct mlx5_ib_dev {TYPE_2__* mdev; int /*<<< orphan*/  mr_srcu; } ;
struct ib_mw {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  mkey_table; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_ON_DEMAND_PAGING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_mw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mlx5_ib_mw* FUNC6 (struct ib_mw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(struct ib_mw *mw)
{
	struct mlx5_ib_dev *dev = FUNC5(mw->device);
	struct mlx5_ib_mw *mmw = FUNC6(mw);
	int err;

	if (FUNC0(CONFIG_INFINIBAND_ON_DEMAND_PAGING)) {
		FUNC7(&dev->mdev->priv.mkey_table,
			     FUNC2(mmw->mmkey.key));
		/*
		 * pagefault_single_data_segment() may be accessing mmw under
		 * SRCU if the user bound an ODP MR to this MW.
		 */
		FUNC4(&dev->mr_srcu);
	}

	err = FUNC3(dev->mdev, &mmw->mmkey);
	if (err)
		return err;
	FUNC1(mmw);
	return 0;
}