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
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,struct device_node*) ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 struct i2c_client* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

struct i2c_client *FUNC3(struct device_node *node)
{
	struct device *dev;
	struct i2c_client *client;

	dev = FUNC0(&i2c_bus_type, node);
	if (!dev)
		return NULL;

	client = FUNC1(dev);
	if (!client)
		FUNC2(dev);

	return client;
}