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
struct i2c_adapter {int /*<<< orphan*/  dev; int /*<<< orphan*/  owner; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct i2c_adapter* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct i2c_adapter *FUNC3(struct device_node *node)
{
	struct i2c_adapter *adapter;

	adapter = FUNC0(node);
	if (!adapter)
		return NULL;

	if (!FUNC2(adapter->owner)) {
		FUNC1(&adapter->dev);
		adapter = NULL;
	}

	return adapter;
}