#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct silead_ts_data {int /*<<< orphan*/  gpio_power; TYPE_1__* regulators; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;
struct TYPE_4__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int I2C_FUNC_SMBUS_WRITE_I2C_BLOCK ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct silead_ts_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct silead_ts_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct silead_ts_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct silead_ts_data*) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  silead_disable_regulator ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*) ; 
 int FUNC13 (struct silead_ts_data*) ; 
 int FUNC14 (struct silead_ts_data*,struct i2c_device_id const*) ; 
 int FUNC15 (struct i2c_client*) ; 
 int /*<<< orphan*/  silead_ts_threaded_irq_handler ; 

__attribute__((used)) static int FUNC16(struct i2c_client *client,
			   const struct i2c_device_id *id)
{
	struct silead_ts_data *data;
	struct device *dev = &client->dev;
	int error;

	if (!FUNC9(client->adapter,
				     I2C_FUNC_I2C |
				     I2C_FUNC_SMBUS_READ_I2C_BLOCK |
				     I2C_FUNC_SMBUS_WRITE_I2C_BLOCK)) {
		FUNC3(dev, "I2C functionality check failed\n");
		return -ENXIO;
	}

	data = FUNC6(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC10(client, data);
	data->client = client;

	error = FUNC14(data, id);
	if (error)
		return error;

	FUNC12(client);

	/* We must have the IRQ provided by DT or ACPI subsytem */
	if (client->irq <= 0)
		return -ENODEV;

	data->regulators[0].supply = "vddio";
	data->regulators[1].supply = "avdd";
	error = FUNC7(dev, FUNC0(data->regulators),
					data->regulators);
	if (error)
		return error;

	/*
	 * Enable regulators at probe and disable them at remove, we need
	 * to keep the chip powered otherwise it forgets its firmware.
	 */
	error = FUNC11(FUNC0(data->regulators),
				      data->regulators);
	if (error)
		return error;

	error = FUNC4(dev, silead_disable_regulator, data);
	if (error)
		return error;

	/* Power GPIO pin */
	data->gpio_power = FUNC5(dev, "power", GPIOD_OUT_LOW);
	if (FUNC1(data->gpio_power)) {
		if (FUNC2(data->gpio_power) != -EPROBE_DEFER)
			FUNC3(dev, "Shutdown GPIO request failed\n");
		return FUNC2(data->gpio_power);
	}

	error = FUNC15(client);
	if (error)
		return error;

	error = FUNC13(data);
	if (error)
		return error;

	error = FUNC8(dev, client->irq,
					  NULL, silead_ts_threaded_irq_handler,
					  IRQF_ONESHOT, client->name, data);
	if (error) {
		if (error != -EPROBE_DEFER)
			FUNC3(dev, "IRQ request failed %d\n", error);
		return error;
	}

	return 0;
}