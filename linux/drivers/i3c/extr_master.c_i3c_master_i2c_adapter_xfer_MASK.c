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
typedef  scalar_t__ u16 ;
struct i3c_master_controller {int /*<<< orphan*/  bus; TYPE_1__* ops; } ;
struct i2c_msg {scalar_t__ addr; } ;
struct i2c_dev_desc {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int (* i2c_xfers ) (struct i2c_dev_desc*,struct i2c_msg*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUPP ; 
 struct i3c_master_controller* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct i2c_dev_desc* FUNC3 (struct i3c_master_controller*,scalar_t__) ; 
 int FUNC4 (struct i2c_dev_desc*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap,
				       struct i2c_msg *xfers, int nxfers)
{
	struct i3c_master_controller *master = FUNC0(adap);
	struct i2c_dev_desc *dev;
	int i, ret;
	u16 addr;

	if (!xfers || !master || nxfers <= 0)
		return -EINVAL;

	if (!master->ops->i2c_xfers)
		return -ENOTSUPP;

	/* Doing transfers to different devices is not supported. */
	addr = xfers[0].addr;
	for (i = 1; i < nxfers; i++) {
		if (addr != xfers[i].addr)
			return -ENOTSUPP;
	}

	FUNC1(&master->bus);
	dev = FUNC3(master, addr);
	if (!dev)
		ret = -ENOENT;
	else
		ret = master->ops->i2c_xfers(dev, xfers, nxfers);
	FUNC2(&master->bus);

	return ret ? ret : nxfers;
}