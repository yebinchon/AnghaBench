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
typedef  int /*<<< orphan*/  u8 ;
struct i3c_master_controller {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dyn_addr; } ;
struct i3c_dev_desc {TYPE_1__ info; } ;
struct dw_i3c_master {int /*<<< orphan*/ * addrs; int /*<<< orphan*/  datstartaddr; scalar_t__ regs; } ;
struct dw_i3c_i2c_dev_data {size_t index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 struct i3c_master_controller* FUNC2 (struct i3c_dev_desc*) ; 
 struct dw_i3c_i2c_dev_data* FUNC3 (struct i3c_dev_desc*) ; 
 struct dw_i3c_master* FUNC4 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct i3c_dev_desc *dev,
					  u8 old_dyn_addr)
{
	struct dw_i3c_i2c_dev_data *data = FUNC3(dev);
	struct i3c_master_controller *m = FUNC2(dev);
	struct dw_i3c_master *master = FUNC4(m);

	FUNC5(FUNC0(dev->info.dyn_addr),
	       master->regs +
	       FUNC1(master->datstartaddr, data->index));

	master->addrs[data->index] = dev->info.dyn_addr;

	return 0;
}