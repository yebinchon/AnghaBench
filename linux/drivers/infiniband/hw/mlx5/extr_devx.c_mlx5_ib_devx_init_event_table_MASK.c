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
struct mlx5_devx_event_table {int /*<<< orphan*/  devx_nb; int /*<<< orphan*/  event_xa_lock; int /*<<< orphan*/  event_xa; } ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; struct mlx5_devx_event_table devx_event_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOTIFY_ANY ; 
 int /*<<< orphan*/  devx_event_notifier ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5_ib_dev *dev)
{
	struct mlx5_devx_event_table *table = &dev->devx_event_table;

	FUNC3(&table->event_xa);
	FUNC2(&table->event_xa_lock);
	FUNC0(&table->devx_nb, devx_event_notifier, NOTIFY_ANY);
	FUNC1(dev->mdev, &table->devx_nb);
}