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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  i3c; } ;
struct device {int dummy; } ;
struct i3c_master_controller {TYPE_1__ boardinfo; int /*<<< orphan*/  bus; struct device dev; } ;
struct i3c_dev_boardinfo {int static_addr; int pid; int init_dyn_addr; int /*<<< orphan*/  node; int /*<<< orphan*/  of_node; } ;
struct device_node {int dummy; } ;
typedef  enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I3C_ADDR_SLOT_FREE ; 
 int I3C_MAX_ADDR ; 
 scalar_t__ FUNC1 (int) ; 
 struct i3c_dev_boardinfo* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int
FUNC7(struct i3c_master_controller *master,
				struct device_node *node, u32 *reg)
{
	struct i3c_dev_boardinfo *boardinfo;
	struct device *dev = &master->dev;
	enum i3c_addr_slot_status addrstatus;
	u32 init_dyn_addr = 0;

	boardinfo = FUNC2(dev, sizeof(*boardinfo), GFP_KERNEL);
	if (!boardinfo)
		return -ENOMEM;

	if (reg[0]) {
		if (reg[0] > I3C_MAX_ADDR)
			return -EINVAL;

		addrstatus = FUNC3(&master->bus,
							  reg[0]);
		if (addrstatus != I3C_ADDR_SLOT_FREE)
			return -EINVAL;
	}

	boardinfo->static_addr = reg[0];

	if (!FUNC6(node, "assigned-address", &init_dyn_addr)) {
		if (init_dyn_addr > I3C_MAX_ADDR)
			return -EINVAL;

		addrstatus = FUNC3(&master->bus,
							  init_dyn_addr);
		if (addrstatus != I3C_ADDR_SLOT_FREE)
			return -EINVAL;
	}

	boardinfo->pid = ((u64)reg[1] << 32) | reg[2];

	if ((boardinfo->pid & FUNC0(63, 48)) ||
	    FUNC1(boardinfo->pid))
		return -EINVAL;

	boardinfo->init_dyn_addr = init_dyn_addr;
	boardinfo->of_node = FUNC5(node);
	FUNC4(&boardinfo->node, &master->boardinfo.i3c);

	return 0;
}