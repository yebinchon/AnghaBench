#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; int /*<<< orphan*/  platform_data; } ;
struct i2c_client {int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  name; TYPE_1__ dev; struct i2c_adapter* adapter; scalar_t__ init_irq; } ;
struct i2c_board_info {int flags; int /*<<< orphan*/  of_node; int /*<<< orphan*/  properties; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  type; int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resources; scalar_t__ irq; int /*<<< orphan*/  addr; int /*<<< orphan*/  platform_data; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct i2c_client* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLIENT_TEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 int FUNC7 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  i2c_client_type ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*,struct i2c_client*,struct i2c_board_info const*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*) ; 
 struct i2c_client* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct i2c_client *
FUNC17(struct i2c_adapter *adap, struct i2c_board_info const *info)
{
	struct i2c_client	*client;
	int			status;

	client = FUNC13(sizeof *client, GFP_KERNEL);
	if (!client)
		return FUNC0(-ENOMEM);

	client->adapter = adap;

	client->dev.platform_data = info->platform_data;
	client->flags = info->flags;
	client->addr = info->addr;

	client->init_irq = info->irq;
	if (!client->init_irq)
		client->init_irq = FUNC9(info->resources,
							 info->num_resources);

	FUNC16(client->name, info->type, sizeof(client->name));

	status = FUNC8(client->addr, client->flags);
	if (status) {
		FUNC2(&adap->dev, "Invalid %d-bit I2C address 0x%02hx\n",
			client->flags & I2C_CLIENT_TEN ? 10 : 7, client->addr);
		goto out_err_silent;
	}

	/* Check for address business */
	status = FUNC7(adap, FUNC11(client));
	if (status)
		goto out_err;

	client->dev.parent = &client->adapter->dev;
	client->dev.bus = &i2c_bus_type;
	client->dev.type = &i2c_client_type;
	client->dev.of_node = FUNC14(info->of_node);
	client->dev.fwnode = info->fwnode;

	FUNC10(adap, client, info);

	if (info->properties) {
		status = FUNC4(&client->dev, info->properties);
		if (status) {
			FUNC2(&adap->dev,
				"Failed to add properties to client %s: %d\n",
				client->name, status);
			goto out_err_put_of_node;
		}
	}

	status = FUNC5(&client->dev);
	if (status)
		goto out_free_props;

	FUNC1(&adap->dev, "client [%s] registered with bus id %s\n",
		client->name, FUNC3(&client->dev));

	return client;

out_free_props:
	if (info->properties)
		FUNC6(&client->dev);
out_err_put_of_node:
	FUNC15(info->of_node);
out_err:
	FUNC2(&adap->dev,
		"Failed to register i2c client %s at 0x%02x (%d)\n",
		client->name, client->addr, status);
out_err_silent:
	FUNC12(client);
	return FUNC0(status);
}