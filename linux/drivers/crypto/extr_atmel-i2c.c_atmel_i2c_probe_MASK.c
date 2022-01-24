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
typedef  long u32 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {TYPE_1__* adapter; struct device dev; } ;
struct atmel_i2c_client_priv {int /*<<< orphan*/  tfm_count; int /*<<< orphan*/  wake_token; int /*<<< orphan*/  wake_token_sz; int /*<<< orphan*/  lock; struct i2c_client* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,long*) ; 
 int FUNC4 (struct i2c_client*) ; 
 struct atmel_i2c_client_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 long FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct atmel_i2c_client_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct atmel_i2c_client_priv *i2c_priv;
	struct device *dev = &client->dev;
	int ret;
	u32 bus_clk_rate;

	if (!FUNC7(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(dev, "I2C_FUNC_I2C not supported\n");
		return -ENODEV;
	}

	bus_clk_rate = FUNC6(&client->adapter->dev);
	if (!bus_clk_rate) {
		ret = FUNC3(&client->adapter->dev,
					       "clock-frequency", &bus_clk_rate);
		if (ret) {
			FUNC2(dev, "failed to read clock-frequency property\n");
			return ret;
		}
	}

	if (bus_clk_rate > 1000000L) {
		FUNC2(dev, "%d exceeds maximum supported clock frequency (1MHz)\n",
			bus_clk_rate);
		return -EINVAL;
	}

	i2c_priv = FUNC5(dev, sizeof(*i2c_priv), GFP_KERNEL);
	if (!i2c_priv)
		return -ENOMEM;

	i2c_priv->client = client;
	FUNC10(&i2c_priv->lock);

	/*
	 * WAKE_TOKEN_MAX_SIZE was calculated for the maximum bus_clk_rate -
	 * 1MHz. The previous bus_clk_rate check ensures us that wake_token_sz
	 * will always be smaller than or equal to WAKE_TOKEN_MAX_SIZE.
	 */
	i2c_priv->wake_token_sz = FUNC0(bus_clk_rate);

	FUNC9(i2c_priv->wake_token, 0, sizeof(i2c_priv->wake_token));

	FUNC1(&i2c_priv->tfm_count, 0);

	FUNC8(client, i2c_priv);

	ret = FUNC4(client);
	if (ret)
		return ret;

	return 0;
}