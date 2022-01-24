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
struct mlx5_ib_mr {int /*<<< orphan*/  mmkey; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mr_srcu; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_ON_DEMAND_PAGING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
	int err = FUNC1(dev->mdev, &mr->mmkey);

	if (FUNC0(CONFIG_INFINIBAND_ON_DEMAND_PAGING))
		/* Wait until all page fault handlers using the mr complete. */
		FUNC2(&dev->mr_srcu);

	return err;
}