#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {int /*<<< orphan*/ * timings; int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct sii902x {TYPE_1__* i2cmux; TYPE_3__ bridge; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mutex; int /*<<< orphan*/  reset_gpio; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; struct device dev; } ;
struct TYPE_4__ {struct sii902x* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_MUX_GATE ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int SII902X_HOTPLUG_EVENT ; 
 int /*<<< orphan*/  SII902X_INT_ENABLE ; 
 int /*<<< orphan*/  SII902X_INT_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SII902X_REG_TPI_RQB ; 
 int /*<<< orphan*/  default_sii902x_timings ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sii902x* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sii902x*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC12 (int /*<<< orphan*/ ,struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,struct sii902x*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int**,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct sii902x*,struct device*) ; 
 int /*<<< orphan*/  sii902x_bridge_funcs ; 
 int /*<<< orphan*/  sii902x_i2c_bypass_deselect ; 
 int /*<<< orphan*/  sii902x_i2c_bypass_select ; 
 int /*<<< orphan*/  sii902x_interrupt ; 
 int /*<<< orphan*/  sii902x_regmap_config ; 
 int /*<<< orphan*/  FUNC19 (struct sii902x*) ; 

__attribute__((used)) static int FUNC20(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	unsigned int status = 0;
	struct sii902x *sii902x;
	u8 chipid[4];
	int ret;

	ret = FUNC10(client->adapter,
				      I2C_FUNC_SMBUS_BYTE_DATA);
	if (!ret) {
		FUNC3(dev, "I2C adapter not suitable\n");
		return -EIO;
	}

	sii902x = FUNC6(dev, sizeof(*sii902x), GFP_KERNEL);
	if (!sii902x)
		return -ENOMEM;

	sii902x->i2c = client;
	sii902x->regmap = FUNC7(client, &sii902x_regmap_config);
	if (FUNC0(sii902x->regmap))
		return FUNC1(sii902x->regmap);

	sii902x->reset_gpio = FUNC5(dev, "reset",
						      GPIOD_OUT_LOW);
	if (FUNC0(sii902x->reset_gpio)) {
		FUNC3(dev, "Failed to retrieve/request reset gpio: %ld\n",
			FUNC1(sii902x->reset_gpio));
		return FUNC1(sii902x->reset_gpio);
	}

	FUNC14(&sii902x->mutex);

	FUNC19(sii902x);

	ret = FUNC17(sii902x->regmap, SII902X_REG_TPI_RQB, 0x0);
	if (ret)
		return ret;

	ret = FUNC15(sii902x->regmap, FUNC2(0),
			       &chipid, 4);
	if (ret) {
		FUNC3(dev, "regmap_read failed %d\n", ret);
		return ret;
	}

	if (chipid[0] != 0xb0) {
		FUNC3(dev, "Invalid chipid: %02x (expecting 0xb0)\n",
			chipid[0]);
		return -EINVAL;
	}

	/* Clear all pending interrupts */
	FUNC16(sii902x->regmap, SII902X_INT_STATUS, &status);
	FUNC17(sii902x->regmap, SII902X_INT_STATUS, status);

	if (client->irq > 0) {
		FUNC17(sii902x->regmap, SII902X_INT_ENABLE,
			     SII902X_HOTPLUG_EVENT);

		ret = FUNC8(dev, client->irq, NULL,
						sii902x_interrupt,
						IRQF_ONESHOT, FUNC4(dev),
						sii902x);
		if (ret)
			return ret;
	}

	sii902x->bridge.funcs = &sii902x_bridge_funcs;
	sii902x->bridge.of_node = dev->of_node;
	sii902x->bridge.timings = &default_sii902x_timings;
	FUNC9(&sii902x->bridge);

	FUNC18(sii902x, dev);

	FUNC13(client, sii902x);

	sii902x->i2cmux = FUNC12(client->adapter, dev,
					1, 0, I2C_MUX_GATE,
					sii902x_i2c_bypass_select,
					sii902x_i2c_bypass_deselect);
	if (!sii902x->i2cmux)
		return -ENOMEM;

	sii902x->i2cmux->priv = sii902x;
	return FUNC11(sii902x->i2cmux, 0, 0, 0);
}