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
struct i3c_ibi_setup {int dummy; } ;
struct i3c_dev_desc {int dummy; } ;
struct TYPE_2__ {unsigned int num_slots; int /*<<< orphan*/  lock; struct i3c_dev_desc** slots; } ;
struct cdns_i3c_master {TYPE_1__ ibi; } ;
struct cdns_i3c_i2c_dev_data {unsigned int ibi; int /*<<< orphan*/ * ibi_pool; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct i3c_master_controller* FUNC2 (struct i3c_dev_desc*) ; 
 struct cdns_i3c_i2c_dev_data* FUNC3 (struct i3c_dev_desc*) ; 
 int /*<<< orphan*/ * FUNC4 (struct i3c_dev_desc*,struct i3c_ibi_setup const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cdns_i3c_master* FUNC8 (struct i3c_master_controller*) ; 

__attribute__((used)) static int FUNC9(struct i3c_dev_desc *dev,
				       const struct i3c_ibi_setup *req)
{
	struct i3c_master_controller *m = FUNC2(dev);
	struct cdns_i3c_master *master = FUNC8(m);
	struct cdns_i3c_i2c_dev_data *data = FUNC3(dev);
	unsigned long flags;
	unsigned int i;

	data->ibi_pool = FUNC4(dev, req);
	if (FUNC0(data->ibi_pool))
		return FUNC1(data->ibi_pool);

	FUNC6(&master->ibi.lock, flags);
	for (i = 0; i < master->ibi.num_slots; i++) {
		if (!master->ibi.slots[i]) {
			data->ibi = i;
			master->ibi.slots[i] = dev;
			break;
		}
	}
	FUNC7(&master->ibi.lock, flags);

	if (i < master->ibi.num_slots)
		return 0;

	FUNC5(data->ibi_pool);
	data->ibi_pool = NULL;

	return -ENOSPC;
}