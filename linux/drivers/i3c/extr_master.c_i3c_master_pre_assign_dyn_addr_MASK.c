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
struct i3c_master_controller {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dyn_addr; int /*<<< orphan*/  static_addr; } ;
struct i3c_dev_desc {TYPE_2__* boardinfo; TYPE_1__ info; } ;
struct TYPE_4__ {int /*<<< orphan*/  init_dyn_addr; int /*<<< orphan*/  static_addr; } ;

/* Variables and functions */
 struct i3c_master_controller* FUNC0 (struct i3c_dev_desc*) ; 
 int FUNC1 (struct i3c_dev_desc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct i3c_master_controller*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i3c_master_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master = FUNC0(dev);
	int ret;

	if (!dev->boardinfo || !dev->boardinfo->init_dyn_addr ||
	    !dev->boardinfo->static_addr)
		return;

	ret = FUNC4(master, dev->info.static_addr,
					dev->boardinfo->init_dyn_addr);
	if (ret)
		return;

	dev->info.dyn_addr = dev->boardinfo->init_dyn_addr;
	ret = FUNC1(dev, 0);
	if (ret)
		goto err_rstdaa;

	ret = FUNC2(dev);
	if (ret)
		goto err_rstdaa;

	return;

err_rstdaa:
	FUNC3(master, dev->boardinfo->init_dyn_addr);
}