#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct TYPE_9__ {char* name; int /*<<< orphan*/  transfer; TYPE_1__* dev; } ;
struct ti_sn_bridge {TYPE_3__ bridge; TYPE_2__ aux; TYPE_1__* dev; int /*<<< orphan*/ * refclk; int /*<<< orphan*/ * enable_gpio; int /*<<< orphan*/  panel; int /*<<< orphan*/ * regmap; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct ti_sn_bridge*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct ti_sn_bridge* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct ti_sn_bridge*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  ti_sn_aux_transfer ; 
 int /*<<< orphan*/  ti_sn_bridge_funcs ; 
 int FUNC15 (struct ti_sn_bridge*) ; 
 int FUNC16 (struct ti_sn_bridge*) ; 
 int /*<<< orphan*/  ti_sn_bridge_regmap_config ; 
 int /*<<< orphan*/  FUNC17 (struct ti_sn_bridge*) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			      const struct i2c_device_id *id)
{
	struct ti_sn_bridge *pdata;
	int ret;

	if (!FUNC12(client->adapter, I2C_FUNC_I2C)) {
		FUNC1("device doesn't support I2C\n");
		return -ENODEV;
	}

	pdata = FUNC7(&client->dev, sizeof(struct ti_sn_bridge),
			     GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	pdata->regmap = FUNC8(client,
					     &ti_sn_bridge_regmap_config);
	if (FUNC2(pdata->regmap)) {
		FUNC1("regmap i2c init failed\n");
		return FUNC3(pdata->regmap);
	}

	pdata->dev = &client->dev;

	ret = FUNC11(pdata->dev->of_node, 1, 0,
					  &pdata->panel, NULL);
	if (ret) {
		FUNC1("could not find any panel node\n");
		return ret;
	}

	FUNC4(&client->dev, pdata);

	pdata->enable_gpio = FUNC6(pdata->dev, "enable",
					    GPIOD_OUT_LOW);
	if (FUNC2(pdata->enable_gpio)) {
		FUNC1("failed to get enable gpio from DT\n");
		ret = FUNC3(pdata->enable_gpio);
		return ret;
	}

	ret = FUNC16(pdata);
	if (ret) {
		FUNC1("failed to parse regulators\n");
		return ret;
	}

	pdata->refclk = FUNC5(pdata->dev, "refclk");
	if (FUNC2(pdata->refclk)) {
		ret = FUNC3(pdata->refclk);
		if (ret == -EPROBE_DEFER)
			return ret;
		FUNC0("refclk not found\n");
		pdata->refclk = NULL;
	}

	ret = FUNC15(pdata);
	if (ret)
		return ret;

	FUNC14(pdata->dev);

	FUNC13(client, pdata);

	pdata->aux.name = "ti-sn65dsi86-aux";
	pdata->aux.dev = pdata->dev;
	pdata->aux.transfer = ti_sn_aux_transfer;
	FUNC10(&pdata->aux);

	pdata->bridge.funcs = &ti_sn_bridge_funcs;
	pdata->bridge.of_node = client->dev.of_node;

	FUNC9(&pdata->bridge);

	FUNC17(pdata);

	return 0;
}