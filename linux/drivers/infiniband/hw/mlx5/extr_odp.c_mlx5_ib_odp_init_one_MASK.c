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
struct TYPE_2__ {int general_caps; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  odp_pf_eq; int /*<<< orphan*/  null_mkey; int /*<<< orphan*/  mdev; TYPE_1__ odp_caps; int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int IB_ODP_SUPPORT ; 
 int IB_ODP_SUPPORT_IMPLICIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx5_ib_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx5_ib_dev_odp_ops ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*,char*,int) ; 

int FUNC4(struct mlx5_ib_dev *dev)
{
	int ret = 0;

	if (!(dev->odp_caps.general_caps & IB_ODP_SUPPORT))
		return ret;

	FUNC0(&dev->ib_dev, &mlx5_ib_dev_odp_ops);

	if (dev->odp_caps.general_caps & IB_ODP_SUPPORT_IMPLICIT) {
		ret = FUNC1(dev->mdev, &dev->null_mkey);
		if (ret) {
			FUNC3(dev, "Error getting null_mkey %d\n", ret);
			return ret;
		}
	}

	ret = FUNC2(dev, &dev->odp_pf_eq);

	return ret;
}