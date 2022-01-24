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
struct TYPE_6__ {int /*<<< orphan*/  rqs_cnt; int /*<<< orphan*/  events_cnt; struct mlx5_ib_dbg_delay_drop* dbg; } ;
struct mlx5_ib_dev {TYPE_3__ delay_drop; TYPE_2__* mdev; } ;
struct mlx5_ib_dbg_delay_drop {int /*<<< orphan*/  timeout_debugfs; int /*<<< orphan*/  dir_debugfs; void* rqs_cnt_debugfs; void* events_cnt_debugfs; } ;
struct TYPE_4__ {int /*<<< orphan*/  dbg_root; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_ib_dev*) ; 
 int /*<<< orphan*/  fops_delay_drop_timeout ; 
 struct mlx5_ib_dbg_delay_drop* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_debugfs_root ; 

__attribute__((used)) static int FUNC5(struct mlx5_ib_dev *dev)
{
	struct mlx5_ib_dbg_delay_drop *dbg;

	if (!mlx5_debugfs_root)
		return 0;

	dbg = FUNC4(sizeof(*dbg), GFP_KERNEL);
	if (!dbg)
		return -ENOMEM;

	dev->delay_drop.dbg = dbg;

	dbg->dir_debugfs =
		FUNC1("delay_drop",
				   dev->mdev->priv.dbg_root);
	if (!dbg->dir_debugfs)
		goto out_debugfs;

	dbg->events_cnt_debugfs =
		FUNC0("num_timeout_events", 0400,
					dbg->dir_debugfs,
					&dev->delay_drop.events_cnt);
	if (!dbg->events_cnt_debugfs)
		goto out_debugfs;

	dbg->rqs_cnt_debugfs =
		FUNC0("num_rqs", 0400,
					dbg->dir_debugfs,
					&dev->delay_drop.rqs_cnt);
	if (!dbg->rqs_cnt_debugfs)
		goto out_debugfs;

	dbg->timeout_debugfs =
		FUNC2("timeout", 0600,
				    dbg->dir_debugfs,
				    &dev->delay_drop,
				    &fops_delay_drop_timeout);
	if (!dbg->timeout_debugfs)
		goto out_debugfs;

	return 0;

out_debugfs:
	FUNC3(dev);
	return -ENOMEM;
}