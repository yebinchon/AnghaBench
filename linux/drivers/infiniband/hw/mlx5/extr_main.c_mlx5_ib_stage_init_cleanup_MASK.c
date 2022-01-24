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
struct TYPE_2__ {int /*<<< orphan*/  memic_alloc_pages; } ;
struct mlx5_ib_dev {TYPE_1__ dm; int /*<<< orphan*/  mr_srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_INFINIBAND_ON_DEMAND_PAGING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_MAX_MEMIC_PAGES ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx5_ib_dev *dev)
{
	FUNC4(dev);
	if (FUNC0(CONFIG_INFINIBAND_ON_DEMAND_PAGING)) {
		FUNC5(&dev->mr_srcu);
		FUNC3(&dev->mr_srcu);
	}

	FUNC1(!FUNC2(dev->dm.memic_alloc_pages, MLX5_MAX_MEMIC_PAGES));
}