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
struct TYPE_3__ {TYPE_2__* dbg; } ;
struct mlx5_ib_dev {TYPE_1__ delay_drop; } ;
struct TYPE_4__ {int /*<<< orphan*/  dir_debugfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(struct mlx5_ib_dev *dev)
{
	if (!dev->delay_drop.dbg)
		return;
	FUNC0(dev->delay_drop.dbg->dir_debugfs);
	FUNC1(dev->delay_drop.dbg);
	dev->delay_drop.dbg = NULL;
}