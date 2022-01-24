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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_dummy_devres {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i2c_client* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  devm_i2c_release_dummy ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct i2c_dummy_devres*) ; 
 struct i2c_dummy_devres* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_dummy_devres*) ; 
 struct i2c_client* FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 

struct i2c_client *FUNC6(struct device *dev,
					     struct i2c_adapter *adapter,
					     u16 address)
{
	struct i2c_dummy_devres *dr;
	struct i2c_client *client;

	dr = FUNC3(devm_i2c_release_dummy, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return FUNC0(-ENOMEM);

	client = FUNC5(adapter, address);
	if (FUNC1(client)) {
		FUNC4(dr);
	} else {
		dr->client = client;
		FUNC2(dev, dr);
	}

	return client;
}