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
struct i2c_client {int dummy; } ;
struct i2c_board_info {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct i2c_client* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct device_node*) ; 
 struct i2c_client* FUNC3 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct device_node*,struct i2c_board_info*) ; 

__attribute__((used)) static struct i2c_client *FUNC5(struct i2c_adapter *adap,
						 struct device_node *node)
{
	struct i2c_client *client;
	struct i2c_board_info info;
	int ret;

	FUNC1(&adap->dev, "of_i2c: register %pOF\n", node);

	ret = FUNC4(&adap->dev, node, &info);
	if (ret)
		return FUNC0(ret);

	client = FUNC3(adap, &info);
	if (!client) {
		FUNC2(&adap->dev, "of_i2c: Failure registering %pOF\n", node);
		return FUNC0(-EINVAL);
	}
	return client;
}