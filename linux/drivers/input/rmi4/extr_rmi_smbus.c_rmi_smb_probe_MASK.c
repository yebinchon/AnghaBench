#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rmi_device_platform_data {int irq; } ;
struct TYPE_2__ {char* proto_name; int /*<<< orphan*/ * ops; struct rmi_device_platform_data pdata; int /*<<< orphan*/ * dev; } ;
struct rmi_smb_xport {TYPE_1__ xport; int /*<<< orphan*/  mappingtable_mutex; int /*<<< orphan*/  page_mutex; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_HOST_NOTIFY ; 
 int I2C_FUNC_SMBUS_READ_BLOCK_DATA ; 
 int /*<<< orphan*/  RMI_DEBUG_XPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct rmi_device_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct rmi_smb_xport* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct rmi_smb_xport*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct rmi_smb_xport*) ; 
 int /*<<< orphan*/  rmi_smb_ops ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct rmi_device_platform_data *pdata = FUNC1(&client->dev);
	struct rmi_smb_xport *rmi_smb;
	int smbus_version;
	int error;

	if (!pdata) {
		FUNC0(&client->dev, "no platform data, aborting\n");
		return -ENOMEM;
	}

	if (!FUNC5(client->adapter,
				     I2C_FUNC_SMBUS_READ_BLOCK_DATA |
				     I2C_FUNC_SMBUS_HOST_NOTIFY)) {
		FUNC0(&client->dev,
			"adapter does not support required functionality\n");
		return -ENODEV;
	}

	if (client->irq <= 0) {
		FUNC0(&client->dev, "no IRQ provided, giving up\n");
		return client->irq ? client->irq : -ENODEV;
	}

	rmi_smb = FUNC4(&client->dev, sizeof(struct rmi_smb_xport),
				GFP_KERNEL);
	if (!rmi_smb)
		return -ENOMEM;

	FUNC8(RMI_DEBUG_XPORT, &client->dev, "Probing %s\n",
		FUNC3(&client->dev));

	rmi_smb->client = client;
	FUNC7(&rmi_smb->page_mutex);
	FUNC7(&rmi_smb->mappingtable_mutex);

	rmi_smb->xport.dev = &client->dev;
	rmi_smb->xport.pdata = *pdata;
	rmi_smb->xport.pdata.irq = client->irq;
	rmi_smb->xport.proto_name = "smb";
	rmi_smb->xport.ops = &rmi_smb_ops;

	smbus_version = FUNC10(rmi_smb);
	if (smbus_version < 0)
		return smbus_version;

	FUNC8(RMI_DEBUG_XPORT, &client->dev, "Smbus version is %d",
		smbus_version);

	if (smbus_version != 2 && smbus_version != 3) {
		FUNC0(&client->dev, "Unrecognized SMB version %d\n",
				smbus_version);
		return -ENODEV;
	}

	FUNC6(client, rmi_smb);

	FUNC2(&client->dev, "registering SMbus-connected sensor\n");

	error = FUNC9(&rmi_smb->xport);
	if (error) {
		FUNC0(&client->dev, "failed to register sensor: %d\n", error);
		return error;
	}

	return 0;
}