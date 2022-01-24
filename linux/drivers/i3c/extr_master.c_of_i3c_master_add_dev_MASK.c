#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct i3c_master_controller {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int FUNC1 (struct i3c_master_controller*,struct device_node*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i3c_master_controller*,struct device_node*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i3c_master_controller *master,
				 struct device_node *node)
{
	u32 reg[3];
	int ret;

	if (!master || !node)
		return -EINVAL;

	ret = FUNC3(node, "reg", reg, FUNC0(reg));
	if (ret)
		return ret;

	/*
	 * The manufacturer ID can't be 0. If reg[1] == 0 that means we're
	 * dealing with an I2C device.
	 */
	if (!reg[1])
		ret = FUNC1(master, node, reg);
	else
		ret = FUNC2(master, node, reg);

	return ret;
}