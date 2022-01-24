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
struct i3c_master_controller {int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  dyn_addr; int /*<<< orphan*/  static_addr; } ;
struct i3c_dev_desc {TYPE_2__ info; TYPE_1__* boardinfo; } ;
struct TYPE_3__ {scalar_t__ init_dyn_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  I3C_ADDR_SLOT_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i3c_master_controller* FUNC1 (struct i3c_dev_desc*) ; 

__attribute__((used)) static void FUNC2(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master = FUNC1(dev);

	if (dev->info.static_addr)
		FUNC0(&master->bus,
					     dev->info.static_addr,
					     I3C_ADDR_SLOT_FREE);

	if (dev->info.dyn_addr)
		FUNC0(&master->bus, dev->info.dyn_addr,
					     I3C_ADDR_SLOT_FREE);

	if (dev->boardinfo && dev->boardinfo->init_dyn_addr)
		FUNC0(&master->bus, dev->info.dyn_addr,
					     I3C_ADDR_SLOT_FREE);
}