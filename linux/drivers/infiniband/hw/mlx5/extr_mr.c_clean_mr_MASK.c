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
struct mlx5_ib_mr {int allocated_from_cache; TYPE_3__* sig; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  psv_idx; } ;
struct TYPE_4__ {int /*<<< orphan*/  psv_idx; } ;
struct TYPE_6__ {TYPE_2__ psv_wire; TYPE_1__ psv_memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_ib_dev*,struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_mr*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx5_ib_dev *dev, struct mlx5_ib_mr *mr)
{
	int allocated_from_cache = mr->allocated_from_cache;

	if (mr->sig) {
		if (FUNC2(dev->mdev,
					  mr->sig->psv_memory.psv_idx))
			FUNC4(dev, "failed to destroy mem psv %d\n",
				     mr->sig->psv_memory.psv_idx);
		if (FUNC2(dev->mdev,
					  mr->sig->psv_wire.psv_idx))
			FUNC4(dev, "failed to destroy wire psv %d\n",
				     mr->sig->psv_wire.psv_idx);
		FUNC1(mr->sig);
		mr->sig = NULL;
	}

	if (!allocated_from_cache) {
		FUNC0(dev, mr);
		FUNC3(mr);
	}
}