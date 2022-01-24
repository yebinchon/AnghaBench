#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap_config {int reg_bits; int val_bits; } ;
struct TYPE_5__ {struct i2c_client* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct mn88473_dev {int clk; struct i2c_client** regmap; struct i2c_client** client; TYPE_1__ frontend; scalar_t__ i2c_wr_max; } ;
struct mn88473_config {int xtal; TYPE_1__** fe; scalar_t__ i2c_wr_max; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct mn88473_config* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct mn88473_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct mn88473_dev*) ; 
 struct mn88473_dev* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mn88473_ops ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*) ; 
 void* FUNC12 (struct i2c_client*,struct regmap_config const*) ; 
 int FUNC13 (struct i2c_client*,int,unsigned int*) ; 
 int FUNC14 (struct i2c_client*,int,int) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct mn88473_config *config = client->dev.platform_data;
	struct mn88473_dev *dev;
	int ret;
	unsigned int uitmp;
	static const struct regmap_config regmap_config = {
		.reg_bits = 8,
		.val_bits = 8,
	};

	FUNC2(&client->dev, "\n");

	/* Caller really need to provide pointer for frontend we create */
	if (config->fe == NULL) {
		FUNC3(&client->dev, "frontend pointer not defined\n");
		ret = -EINVAL;
		goto err;
	}

	dev = FUNC9(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		ret = -ENOMEM;
		goto err;
	}

	if (config->i2c_wr_max)
		dev->i2c_wr_max = config->i2c_wr_max;
	else
		dev->i2c_wr_max = ~0;

	if (config->xtal)
		dev->clk = config->xtal;
	else
		dev->clk = 25000000;
	dev->client[0] = client;
	dev->regmap[0] = FUNC12(dev->client[0], &regmap_config);
	if (FUNC0(dev->regmap[0])) {
		ret = FUNC1(dev->regmap[0]);
		goto err_kfree;
	}

	/*
	 * Chip has three I2C addresses for different register banks. Used
	 * addresses are 0x18, 0x1a and 0x1c. We register two dummy clients,
	 * 0x1a and 0x1c, in order to get own I2C client for each register bank.
	 *
	 * Also, register bank 2 do not support sequential I/O. Only single
	 * register write or read is allowed to that bank.
	 */
	dev->client[1] = FUNC5(client->adapter, 0x1a);
	if (FUNC0(dev->client[1])) {
		ret = FUNC1(dev->client[1]);
		FUNC3(&client->dev, "I2C registration failed\n");
		goto err_regmap_0_regmap_exit;
	}
	dev->regmap[1] = FUNC12(dev->client[1], &regmap_config);
	if (FUNC0(dev->regmap[1])) {
		ret = FUNC1(dev->regmap[1]);
		goto err_client_1_i2c_unregister_device;
	}
	FUNC6(dev->client[1], dev);

	dev->client[2] = FUNC5(client->adapter, 0x1c);
	if (FUNC0(dev->client[2])) {
		ret = FUNC1(dev->client[2]);
		FUNC3(&client->dev, "2nd I2C registration failed\n");
		goto err_regmap_1_regmap_exit;
	}
	dev->regmap[2] = FUNC12(dev->client[2], &regmap_config);
	if (FUNC0(dev->regmap[2])) {
		ret = FUNC1(dev->regmap[2]);
		goto err_client_2_i2c_unregister_device;
	}
	FUNC6(dev->client[2], dev);

	/* Check demod answers with correct chip id */
	ret = FUNC13(dev->regmap[2], 0xff, &uitmp);
	if (ret)
		goto err_regmap_2_regmap_exit;

	FUNC2(&client->dev, "chip id=%02x\n", uitmp);

	if (uitmp != 0x03) {
		ret = -ENODEV;
		goto err_regmap_2_regmap_exit;
	}

	/* Sleep because chip is active by default */
	ret = FUNC14(dev->regmap[2], 0x05, 0x3e);
	if (ret)
		goto err_regmap_2_regmap_exit;

	/* Create dvb frontend */
	FUNC10(&dev->frontend.ops, &mn88473_ops, sizeof(dev->frontend.ops));
	dev->frontend.demodulator_priv = client;
	*config->fe = &dev->frontend;
	FUNC6(client, dev);

	FUNC4(&client->dev, "Panasonic MN88473 successfully identified\n");

	return 0;
err_regmap_2_regmap_exit:
	FUNC11(dev->regmap[2]);
err_client_2_i2c_unregister_device:
	FUNC7(dev->client[2]);
err_regmap_1_regmap_exit:
	FUNC11(dev->regmap[1]);
err_client_1_i2c_unregister_device:
	FUNC7(dev->client[1]);
err_regmap_0_regmap_exit:
	FUNC11(dev->regmap[0]);
err_kfree:
	FUNC8(dev);
err:
	FUNC2(&client->dev, "failed=%d\n", ret);
	return ret;
}