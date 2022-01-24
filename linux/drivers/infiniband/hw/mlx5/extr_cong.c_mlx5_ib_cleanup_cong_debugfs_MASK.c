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
typedef  size_t u8 ;
struct mlx5_ib_dev {TYPE_1__* port; } ;
struct TYPE_4__ {int /*<<< orphan*/  root; } ;
struct TYPE_3__ {TYPE_2__* dbg_cc_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  mlx5_debugfs_root ; 

void FUNC2(struct mlx5_ib_dev *dev, u8 port_num)
{
	if (!mlx5_debugfs_root ||
	    !dev->port[port_num].dbg_cc_params ||
	    !dev->port[port_num].dbg_cc_params->root)
		return;

	FUNC0(dev->port[port_num].dbg_cc_params->root);
	FUNC1(dev->port[port_num].dbg_cc_params);
	dev->port[port_num].dbg_cc_params = NULL;
}