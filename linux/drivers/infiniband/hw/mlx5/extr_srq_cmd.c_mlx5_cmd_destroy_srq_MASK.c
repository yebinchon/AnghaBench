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
struct mlx5_srq_table {int /*<<< orphan*/  array; } ;
struct mlx5_ib_dev {struct mlx5_srq_table srq_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  free; } ;
struct mlx5_core_srq {TYPE_1__ common; int /*<<< orphan*/  srqn; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_ib_dev*,struct mlx5_core_srq*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5_core_srq* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq)
{
	struct mlx5_srq_table *table = &dev->srq_table;
	struct mlx5_core_srq *tmp;
	int err;

	tmp = FUNC3(&table->array, srq->srqn);
	if (!tmp || tmp != srq)
		return;

	err = FUNC0(dev, srq);
	if (err)
		return;

	FUNC1(&srq->common);
	FUNC2(&srq->common.free);
}