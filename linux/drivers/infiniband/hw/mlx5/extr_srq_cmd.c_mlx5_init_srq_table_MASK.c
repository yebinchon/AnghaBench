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
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct mlx5_srq_table {TYPE_1__ nb; int /*<<< orphan*/  array; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; struct mlx5_srq_table srq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  XA_FLAGS_LOCK_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_srq_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  srq_event_notifier ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx5_ib_dev *dev)
{
	struct mlx5_srq_table *table = &dev->srq_table;

	FUNC0(table, 0, sizeof(*table));
	FUNC2(&table->array, XA_FLAGS_LOCK_IRQ);

	table->nb.notifier_call = srq_event_notifier;
	FUNC1(dev->mdev, &table->nb);

	return 0;
}