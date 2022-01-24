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
struct ltc4306 {struct gpio_desc* regmap; struct chip_desc const* chip; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct chip_desc {int nchans; } ;
struct TYPE_2__ {size_t driver_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_MUX_LOCKED ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 unsigned int LTC_DOWNSTREAM_ACCL_EN ; 
 int /*<<< orphan*/  LTC_REG_CONFIG ; 
 int /*<<< orphan*/  LTC_REG_SWITCH ; 
 unsigned int LTC_UPSTREAM_ACCL_EN ; 
 int FUNC1 (struct gpio_desc*) ; 
 struct chip_desc* chips ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct gpio_desc* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_desc*,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,struct i2c_client*) ; 
 int FUNC10 (struct i2c_mux_core*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct i2c_mux_core* FUNC11 (struct i2c_adapter*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_mux_core*) ; 
 struct ltc4306* FUNC13 (struct i2c_mux_core*) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,struct i2c_mux_core*) ; 
 int /*<<< orphan*/ * ltc4306_deselect_mux ; 
 int FUNC15 (struct ltc4306*) ; 
 int /*<<< orphan*/  ltc4306_id ; 
 int /*<<< orphan*/  ltc4306_regmap_config ; 
 int /*<<< orphan*/  ltc4306_select_mux ; 
 struct chip_desc* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct gpio_desc*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client)
{
	struct i2c_adapter *adap = client->adapter;
	const struct chip_desc *chip;
	struct i2c_mux_core *muxc;
	struct ltc4306 *data;
	struct gpio_desc *gpio;
	bool idle_disc;
	unsigned int val = 0;
	int num, ret;

	chip = FUNC16(&client->dev);

	if (!chip)
		chip = &chips[FUNC9(ltc4306_id, client)->driver_data];

	idle_disc = FUNC5(&client->dev,
					      "i2c-mux-idle-disconnect");

	muxc = FUNC11(adap, &client->dev,
			     chip->nchans, sizeof(*data),
			     I2C_MUX_LOCKED, ltc4306_select_mux,
			     idle_disc ? ltc4306_deselect_mux : NULL);
	if (!muxc)
		return -ENOMEM;
	data = FUNC13(muxc);
	data->chip = chip;

	FUNC14(client, muxc);

	data->regmap = FUNC7(client, &ltc4306_regmap_config);
	if (FUNC0(data->regmap)) {
		ret = FUNC1(data->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n",
			ret);
		return ret;
	}

	/* Reset and enable the mux if an enable GPIO is specified. */
	gpio = FUNC6(&client->dev, "enable", GPIOD_OUT_LOW);
	if (FUNC0(gpio))
		return FUNC1(gpio);

	if (gpio) {
		FUNC18(1);
		FUNC8(gpio, 1);
	}

	/*
	 * Write the mux register at addr to verify
	 * that the mux is in fact present. This also
	 * initializes the mux to disconnected state.
	 */
	if (FUNC17(data->regmap, LTC_REG_SWITCH, 0) < 0) {
		FUNC4(&client->dev, "probe failed\n");
		return -ENODEV;
	}

	if (FUNC5(&client->dev,
				      "ltc,downstream-accelerators-enable"))
		val |= LTC_DOWNSTREAM_ACCL_EN;

	if (FUNC5(&client->dev,
				      "ltc,upstream-accelerators-enable"))
		val |= LTC_UPSTREAM_ACCL_EN;

	if (FUNC17(data->regmap, LTC_REG_CONFIG, val) < 0)
		return -ENODEV;

	ret = FUNC15(data);
	if (ret < 0)
		return ret;

	/* Now create an adapter for each channel */
	for (num = 0; num < chip->nchans; num++) {
		ret = FUNC10(muxc, 0, num, 0);
		if (ret) {
			FUNC12(muxc);
			return ret;
		}
	}

	FUNC3(&client->dev,
		 "registered %d multiplexed busses for I2C switch %s\n",
		 num, client->name);

	return 0;
}