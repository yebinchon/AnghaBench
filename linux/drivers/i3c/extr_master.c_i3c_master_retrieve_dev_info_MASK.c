#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct i3c_master_controller {int /*<<< orphan*/  bus; } ;
struct TYPE_8__ {int bcr; int max_ibi_len; int /*<<< orphan*/  dyn_addr; } ;
struct i3c_dev_desc {TYPE_1__ info; } ;
typedef  enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;

/* Variables and functions */
 int EINVAL ; 
 int I3C_ADDR_SLOT_I2C_DEV ; 
 int I3C_ADDR_SLOT_RSVD ; 
 int I3C_BCR_HDR_CAP ; 
 int I3C_BCR_IBI_PAYLOAD ; 
 int I3C_BCR_MAX_DATA_SPEED_LIM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct i3c_master_controller* FUNC1 (struct i3c_dev_desc*) ; 
 int FUNC2 (struct i3c_master_controller*,TYPE_1__*) ; 
 int FUNC3 (struct i3c_master_controller*,TYPE_1__*) ; 
 int FUNC4 (struct i3c_master_controller*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i3c_master_controller*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct i3c_master_controller*,TYPE_1__*) ; 
 int FUNC7 (struct i3c_master_controller*,TYPE_1__*) ; 
 int FUNC8 (struct i3c_master_controller*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct i3c_dev_desc *dev)
{
	struct i3c_master_controller *master = FUNC1(dev);
	enum i3c_addr_slot_status slot_status;
	int ret;

	if (!dev->info.dyn_addr)
		return -EINVAL;

	slot_status = FUNC0(&master->bus,
						   dev->info.dyn_addr);
	if (slot_status == I3C_ADDR_SLOT_RSVD ||
	    slot_status == I3C_ADDR_SLOT_I2C_DEV)
		return -EINVAL;

	ret = FUNC8(master, &dev->info);
	if (ret)
		return ret;

	ret = FUNC2(master, &dev->info);
	if (ret)
		return ret;

	ret = FUNC3(master, &dev->info);
	if (ret)
		return ret;

	if (dev->info.bcr & I3C_BCR_MAX_DATA_SPEED_LIM) {
		ret = FUNC7(master, &dev->info);
		if (ret)
			return ret;
	}

	if (dev->info.bcr & I3C_BCR_IBI_PAYLOAD)
		dev->info.max_ibi_len = 1;

	FUNC5(master, &dev->info);
	FUNC6(master, &dev->info);

	if (dev->info.bcr & I3C_BCR_HDR_CAP) {
		ret = FUNC4(master, &dev->info);
		if (ret)
			return ret;
	}

	return 0;
}