#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct rmi_device_platform_data {int /*<<< orphan*/  irq; } ;
struct TYPE_13__ {char* proto_name; int /*<<< orphan*/ * ops; TYPE_2__* dev; struct rmi_device_platform_data pdata; } ;
struct rmi_i2c_xport {TYPE_1__ xport; int /*<<< orphan*/  page_mutex; struct i2c_client* client; int /*<<< orphan*/  startup_delay; TYPE_3__* supplies; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; } ;
struct TYPE_15__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  RMI_DEBUG_XPORT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 struct rmi_device_platform_data* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,struct rmi_i2c_xport*) ; 
 struct rmi_i2c_xport* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct rmi_i2c_xport*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rmi_i2c_ops ; 
 int /*<<< orphan*/  rmi_i2c_regulator_bulk_disable ; 
 int /*<<< orphan*/  rmi_i2c_unregister_transport ; 
 int FUNC15 (TYPE_1__*) ; 
 int FUNC16 (struct rmi_i2c_xport*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct rmi_device_platform_data *pdata;
	struct rmi_device_platform_data *client_pdata =
					FUNC2(&client->dev);
	struct rmi_i2c_xport *rmi_i2c;
	int error;

	rmi_i2c = FUNC6(&client->dev, sizeof(struct rmi_i2c_xport),
				GFP_KERNEL);
	if (!rmi_i2c)
		return -ENOMEM;

	pdata = &rmi_i2c->xport.pdata;

	if (!client->dev.of_node && client_pdata)
		*pdata = *client_pdata;

	pdata->irq = client->irq;

	FUNC14(RMI_DEBUG_XPORT, &client->dev, "Probing %s.\n",
			FUNC4(&client->dev));

	if (!FUNC8(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev,
			"adapter does not support required functionality\n");
		return -ENODEV;
	}

	rmi_i2c->supplies[0].supply = "vdd";
	rmi_i2c->supplies[1].supply = "vio";
	error = FUNC7(&client->dev,
					 FUNC0(rmi_i2c->supplies),
					 rmi_i2c->supplies);
	if (error < 0)
		return error;

	error = FUNC13(FUNC0(rmi_i2c->supplies),
				       rmi_i2c->supplies);
	if (error < 0)
		return error;

	error = FUNC5(&client->dev,
					  rmi_i2c_regulator_bulk_disable,
					  rmi_i2c);
	if (error)
		return error;

	FUNC12(client->dev.of_node, "syna,startup-delay-ms",
			     &rmi_i2c->startup_delay);

	FUNC10(rmi_i2c->startup_delay);

	rmi_i2c->client = client;
	FUNC11(&rmi_i2c->page_mutex);

	rmi_i2c->xport.dev = &client->dev;
	rmi_i2c->xport.proto_name = "i2c";
	rmi_i2c->xport.ops = &rmi_i2c_ops;

	FUNC9(client, rmi_i2c);

	/*
	 * Setting the page to zero will (a) make sure the PSR is in a
	 * known state, and (b) make sure we can talk to the device.
	 */
	error = FUNC16(rmi_i2c, 0);
	if (error) {
		FUNC1(&client->dev, "Failed to set page select to 0\n");
		return error;
	}

	FUNC3(&client->dev, "registering I2C-connected sensor\n");

	error = FUNC15(&rmi_i2c->xport);
	if (error) {
		FUNC1(&client->dev, "failed to register sensor: %d\n", error);
		return error;
	}

	error = FUNC5(&client->dev,
					  rmi_i2c_unregister_transport,
					  rmi_i2c);
	if (error)
		return error;

	return 0;
}