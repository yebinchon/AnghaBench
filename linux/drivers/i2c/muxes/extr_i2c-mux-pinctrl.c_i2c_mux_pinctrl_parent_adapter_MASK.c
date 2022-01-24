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
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct i2c_adapter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct i2c_adapter* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct i2c_adapter *FUNC5(struct device *dev)
{
	struct device_node *np = dev->of_node;
	struct device_node *parent_np;
	struct i2c_adapter *parent;

	parent_np = FUNC4(np, "i2c-parent", 0);
	if (!parent_np) {
		FUNC1(dev, "Cannot parse i2c-parent\n");
		return FUNC0(-ENODEV);
	}
	parent = FUNC2(parent_np);
	FUNC3(parent_np);
	if (!parent)
		return FUNC0(-EPROBE_DEFER);

	return parent;
}