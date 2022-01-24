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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  i2c; } ;
struct device {int dummy; } ;
struct i3c_master_controller {TYPE_1__ boardinfo; struct device dev; } ;
struct TYPE_4__ {int flags; } ;
struct i2c_dev_boardinfo {int /*<<< orphan*/  node; int /*<<< orphan*/  lvr; TYPE_2__ base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLIENT_TEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct i2c_dev_boardinfo* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,struct device_node*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static int
FUNC5(struct i3c_master_controller *master,
				struct device_node *node, u32 *reg)
{
	struct i2c_dev_boardinfo *boardinfo;
	struct device *dev = &master->dev;
	int ret;

	boardinfo = FUNC1(dev, sizeof(*boardinfo), GFP_KERNEL);
	if (!boardinfo)
		return -ENOMEM;

	ret = FUNC3(dev, node, &boardinfo->base);
	if (ret)
		return ret;

	/*
	 * The I3C Specification does not clearly say I2C devices with 10-bit
	 * address are supported. These devices can't be passed properly through
	 * DEFSLVS command.
	 */
	if (boardinfo->base.flags & I2C_CLIENT_TEN) {
		FUNC0(&master->dev, "I2C device with 10 bit address not supported.");
		return -ENOTSUPP;
	}

	/* LVR is encoded in reg[2]. */
	boardinfo->lvr = reg[2];

	FUNC2(&boardinfo->node, &master->boardinfo.i2c);
	FUNC4(node);

	return 0;
}