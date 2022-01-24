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
struct i3c_master_controller {int dummy; } ;
struct i3c_dev_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** slots; } ;
struct cdns_i3c_master {TYPE_1__ ibi; } ;
struct cdns_i3c_i2c_dev_data {size_t ibi; int /*<<< orphan*/  ibi_pool; } ;

/* Variables and functions */
 struct i3c_master_controller* FUNC0 (struct i3c_dev_desc*) ; 
 struct cdns_i3c_i2c_dev_data* FUNC1 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cdns_i3c_master* FUNC5 (struct i3c_master_controller*) ; 

__attribute__((used)) static void FUNC6(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *m = FUNC0(dev);
	struct cdns_i3c_master *master = FUNC5(m);
	struct cdns_i3c_i2c_dev_data *data = FUNC1(dev);
	unsigned long flags;

	FUNC3(&master->ibi.lock, flags);
	master->ibi.slots[data->ibi] = NULL;
	data->ibi = -1;
	FUNC4(&master->ibi.lock, flags);

	FUNC2(data->ibi_pool);
}