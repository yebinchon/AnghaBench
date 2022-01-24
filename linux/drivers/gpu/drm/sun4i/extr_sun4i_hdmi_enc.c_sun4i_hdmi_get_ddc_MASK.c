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
struct i2c_adapter {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct i2c_adapter* FUNC0 (int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i2c_adapter *FUNC5(struct device *dev)
{
	struct device_node *phandle, *remote;
	struct i2c_adapter *ddc;

	remote = FUNC2(dev->of_node, 1, -1);
	if (!remote)
		return FUNC0(-EINVAL);

	phandle = FUNC4(remote, "ddc-i2c-bus", 0);
	FUNC3(remote);
	if (!phandle)
		return FUNC0(-ENODEV);

	ddc = FUNC1(phandle);
	FUNC3(phandle);
	if (!ddc)
		return FUNC0(-EPROBE_DEFER);

	return ddc;
}