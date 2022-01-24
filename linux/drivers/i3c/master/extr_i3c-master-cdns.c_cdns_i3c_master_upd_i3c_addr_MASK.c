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
typedef  int u32 ;
struct i3c_master_controller {int dummy; } ;
struct TYPE_2__ {scalar_t__ static_addr; scalar_t__ dyn_addr; } ;
struct i3c_dev_desc {TYPE_1__ info; } ;
struct cdns_i3c_master {scalar_t__ regs; } ;
struct cdns_i3c_i2c_dev_data {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int DEV_ID_RR0_IS_I3C ; 
 struct i3c_master_controller* FUNC1 (struct i3c_dev_desc*) ; 
 struct cdns_i3c_i2c_dev_data* FUNC2 (struct i3c_dev_desc*) ; 
 int FUNC3 (scalar_t__) ; 
 struct cdns_i3c_master* FUNC4 (struct i3c_master_controller*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *m = FUNC1(dev);
	struct cdns_i3c_master *master = FUNC4(m);
	struct cdns_i3c_i2c_dev_data *data = FUNC2(dev);
	u32 rr;

	rr = FUNC3(dev->info.dyn_addr ?
				     dev->info.dyn_addr :
				     dev->info.static_addr);
	FUNC5(DEV_ID_RR0_IS_I3C | rr, master->regs + FUNC0(data->id));
}