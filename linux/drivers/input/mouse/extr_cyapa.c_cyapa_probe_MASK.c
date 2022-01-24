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
typedef  union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef  scalar_t__ u8 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  irq; TYPE_1__* adapter; struct device dev; } ;
struct cyapa {int smbus; scalar_t__ operational; int /*<<< orphan*/  vcc; int /*<<< orphan*/  phys; struct i2c_client* client; } ;
struct TYPE_2__ {int nr; } ;

/* Variables and functions */
 scalar_t__ CYAPA_ADAPTER_FUNC_NONE ; 
 scalar_t__ CYAPA_ADAPTER_FUNC_SMBUS ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_SMBUS_BYTE ; 
 int /*<<< orphan*/  I2C_SMBUS_READ ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC4 (struct cyapa*) ; 
 int FUNC5 (struct cyapa*) ; 
 int /*<<< orphan*/  cyapa_irq ; 
 int FUNC6 (struct cyapa*) ; 
 int FUNC7 (struct cyapa*) ; 
 int /*<<< orphan*/  cyapa_sysfs_group ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/  (*) (struct cyapa*),struct cyapa*) ; 
 int FUNC10 (struct device*,int /*<<< orphan*/ *) ; 
 struct cyapa* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,char*) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct cyapa*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct cyapa*) ; 
 scalar_t__ FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union i2c_smbus_data*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
		       const struct i2c_device_id *dev_id)
{
	struct device *dev = &client->dev;
	struct cyapa *cyapa;
	u8 adapter_func;
	union i2c_smbus_data dummy;
	int error;

	adapter_func = FUNC2(client);
	if (adapter_func == CYAPA_ADAPTER_FUNC_NONE) {
		FUNC8(dev, "not a supported I2C/SMBus adapter\n");
		return -EIO;
	}

	/* Make sure there is something at this address */
	if (FUNC16(client->adapter, client->addr, 0,
			I2C_SMBUS_READ, 0, I2C_SMBUS_BYTE, &dummy) < 0)
		return -ENODEV;

	cyapa = FUNC11(dev, sizeof(struct cyapa), GFP_KERNEL);
	if (!cyapa)
		return -ENOMEM;

	/* i2c isn't supported, use smbus */
	if (adapter_func == CYAPA_ADAPTER_FUNC_SMBUS)
		cyapa->smbus = true;

	cyapa->client = client;
	FUNC15(client, cyapa);
	FUNC18(cyapa->phys, "i2c-%d-%04x/input0", client->adapter->nr,
		client->addr);

	cyapa->vcc = FUNC12(dev, "vcc");
	if (FUNC0(cyapa->vcc)) {
		error = FUNC1(cyapa->vcc);
		FUNC8(dev, "failed to get vcc regulator: %d\n", error);
		return error;
	}

	error = FUNC17(cyapa->vcc);
	if (error) {
		FUNC8(dev, "failed to enable regulator: %d\n", error);
		return error;
	}

	error = FUNC9(dev, cyapa_disable_regulator, cyapa);
	if (error) {
		FUNC4(cyapa);
		FUNC8(dev, "failed to add disable regulator action: %d\n",
			error);
		return error;
	}

	error = FUNC5(cyapa);
	if (error) {
		FUNC8(dev, "failed to detect and initialize tp device.\n");
		return error;
	}

	error = FUNC10(dev, &cyapa_sysfs_group);
	if (error) {
		FUNC8(dev, "failed to create sysfs entries: %d\n", error);
		return error;
	}

	error = FUNC6(cyapa);
	if (error) {
		FUNC8(dev, "failed to prepare wakeup controls: %d\n", error);
		return error;
	}

	error = FUNC7(cyapa);
	if (error) {
		FUNC8(dev, "failed to start pm_runtime: %d\n", error);
		return error;
	}

	error = FUNC13(dev, client->irq,
					  NULL, cyapa_irq,
					  IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					  "cyapa", cyapa);
	if (error) {
		FUNC8(dev, "failed to request threaded irq: %d\n", error);
		return error;
	}

	/* Disable IRQ until the device is opened */
	FUNC14(client->irq);

	/*
	 * Register the device in the input subsystem when it's operational.
	 * Otherwise, keep in this driver, so it can be be recovered or updated
	 * through the sysfs mode and update_fw interfaces by user or apps.
	 */
	if (cyapa->operational) {
		error = FUNC3(cyapa);
		if (error) {
			FUNC8(dev, "create input_dev instance failed: %d\n",
					error);
			return error;
		}
	}

	return 0;
}