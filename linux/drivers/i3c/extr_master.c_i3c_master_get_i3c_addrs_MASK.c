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
struct TYPE_4__ {int /*<<< orphan*/  static_addr; int /*<<< orphan*/  dyn_addr; } ;
struct i3c_dev_desc {TYPE_2__ info; TYPE_1__* boardinfo; } ;
typedef  enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;
struct TYPE_3__ {int /*<<< orphan*/  init_dyn_addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int I3C_ADDR_SLOT_FREE ; 
 int I3C_ADDR_SLOT_I3C_DEV ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct i3c_master_controller* FUNC2 (struct i3c_dev_desc*) ; 

__attribute__((used)) static int FUNC3(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master = FUNC2(dev);
	enum i3c_addr_slot_status status;

	if (!dev->info.static_addr && !dev->info.dyn_addr)
		return 0;

	if (dev->info.static_addr) {
		status = FUNC0(&master->bus,
						      dev->info.static_addr);
		if (status != I3C_ADDR_SLOT_FREE)
			return -EBUSY;

		FUNC1(&master->bus,
					     dev->info.static_addr,
					     I3C_ADDR_SLOT_I3C_DEV);
	}

	/*
	 * ->init_dyn_addr should have been reserved before that, so, if we're
	 * trying to apply a pre-reserved dynamic address, we should not try
	 * to reserve the address slot a second time.
	 */
	if (dev->info.dyn_addr &&
	    (!dev->boardinfo ||
	     dev->boardinfo->init_dyn_addr != dev->info.dyn_addr)) {
		status = FUNC0(&master->bus,
						      dev->info.dyn_addr);
		if (status != I3C_ADDR_SLOT_FREE)
			goto err_release_static_addr;

		FUNC1(&master->bus, dev->info.dyn_addr,
					     I3C_ADDR_SLOT_I3C_DEV);
	}

	return 0;

err_release_static_addr:
	if (dev->info.static_addr)
		FUNC1(&master->bus,
					     dev->info.static_addr,
					     I3C_ADDR_SLOT_FREE);

	return -EBUSY;
}