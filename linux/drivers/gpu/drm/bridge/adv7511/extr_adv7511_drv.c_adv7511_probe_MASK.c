#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct adv7511_link_config {int dummy; } ;
struct TYPE_12__ {scalar_t__ of_node; int /*<<< orphan*/ * funcs; } ;
struct adv7511 {int powered; int type; TYPE_1__* i2c_edid; TYPE_1__* i2c_packet; scalar_t__ cec_clk; TYPE_1__* i2c_cec; TYPE_6__ bridge; int /*<<< orphan*/  wq; int /*<<< orphan*/  hpd_work; TYPE_1__* regmap; TYPE_1__* gpio_pd; int /*<<< orphan*/  status; struct i2c_client* i2c_main; } ;
typedef  int /*<<< orphan*/  link_config ;
typedef  enum adv7511_type { ____Placeholder_adv7511_type } adv7511_type ;
struct TYPE_11__ {int addr; } ;

/* Variables and functions */
 scalar_t__ ADV7511 ; 
 int /*<<< orphan*/  ADV7511_EDID_I2C_ADDR_DEFAULT ; 
 int /*<<< orphan*/  ADV7511_PACKET_I2C_ADDR_DEFAULT ; 
 int /*<<< orphan*/  ADV7511_REG_CEC_I2C_ADDR ; 
 int /*<<< orphan*/  ADV7511_REG_CHIP_REVISION ; 
 int /*<<< orphan*/  ADV7511_REG_EDID_I2C_ADDR ; 
 int /*<<< orphan*/  ADV7511_REG_PACKET_I2C_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct adv7511*) ; 
 int /*<<< orphan*/  adv7511_bridge_funcs ; 
 int FUNC5 (struct device*,struct adv7511*) ; 
 int /*<<< orphan*/  adv7511_fixed_registers ; 
 int /*<<< orphan*/  adv7511_hpd_work ; 
 int FUNC6 (struct adv7511*) ; 
 int FUNC7 (struct adv7511*) ; 
 int /*<<< orphan*/  adv7511_irq_handler ; 
 int /*<<< orphan*/  FUNC8 (struct adv7511*,int) ; 
 int FUNC9 (scalar_t__,struct adv7511_link_config*) ; 
 int /*<<< orphan*/  FUNC10 (struct adv7511*) ; 
 int /*<<< orphan*/  adv7511_regmap_config ; 
 int /*<<< orphan*/  FUNC11 (struct adv7511*,struct adv7511_link_config*) ; 
 int /*<<< orphan*/  FUNC12 (struct adv7511*) ; 
 int FUNC13 (scalar_t__,struct adv7511*) ; 
 int FUNC14 (struct adv7511*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  connector_status_disconnected ; 
 int /*<<< orphan*/  FUNC16 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 TYPE_1__* FUNC19 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct adv7511* FUNC20 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC21 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adv7511*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC25 (struct i2c_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct i2c_client*,struct adv7511*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct adv7511_link_config*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC30 (struct device*) ; 
 int FUNC31 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC32 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC34 (int,int) ; 

__attribute__((used)) static int FUNC35(struct i2c_client *i2c, const struct i2c_device_id *id)
{
	struct adv7511_link_config link_config;
	struct adv7511 *adv7511;
	struct device *dev = &i2c->dev;
	unsigned int val;
	int ret;

	if (!dev->of_node)
		return -EINVAL;

	adv7511 = FUNC20(dev, sizeof(*adv7511), GFP_KERNEL);
	if (!adv7511)
		return -ENOMEM;

	adv7511->i2c_main = i2c;
	adv7511->powered = false;
	adv7511->status = connector_status_disconnected;

	if (dev->of_node)
		adv7511->type = (enum adv7511_type)FUNC30(dev);
	else
		adv7511->type = id->driver_data;

	FUNC29(&link_config, 0, sizeof(link_config));

	if (adv7511->type == ADV7511)
		ret = FUNC9(dev->of_node, &link_config);
	else
		ret = FUNC13(dev->of_node, adv7511);
	if (ret)
		return ret;

	ret = FUNC7(adv7511);
	if (ret) {
		FUNC17(dev, "failed to init regulators\n");
		return ret;
	}

	/*
	 * The power down GPIO is optional. If present, toggle it from active to
	 * inactive to wake up the encoder.
	 */
	adv7511->gpio_pd = FUNC19(dev, "pd", GPIOD_OUT_HIGH);
	if (FUNC2(adv7511->gpio_pd)) {
		ret = FUNC3(adv7511->gpio_pd);
		goto uninit_regulators;
	}

	if (adv7511->gpio_pd) {
		FUNC34(5000, 6000);
		FUNC24(adv7511->gpio_pd, 0);
	}

	adv7511->regmap = FUNC21(i2c, &adv7511_regmap_config);
	if (FUNC2(adv7511->regmap)) {
		ret = FUNC3(adv7511->regmap);
		goto uninit_regulators;
	}

	ret = FUNC31(adv7511->regmap, ADV7511_REG_CHIP_REVISION, &val);
	if (ret)
		goto uninit_regulators;
	FUNC16(dev, "Rev. %d\n", val);

	if (adv7511->type == ADV7511)
		ret = FUNC32(adv7511->regmap,
					    adv7511_fixed_registers,
					    FUNC0(adv7511_fixed_registers));
	else
		ret = FUNC14(adv7511);
	if (ret)
		goto uninit_regulators;

	FUNC8(adv7511, 0xffff);

	adv7511->i2c_edid = FUNC25(i2c, "edid",
					ADV7511_EDID_I2C_ADDR_DEFAULT);
	if (FUNC2(adv7511->i2c_edid)) {
		ret = FUNC3(adv7511->i2c_edid);
		goto uninit_regulators;
	}

	FUNC33(adv7511->regmap, ADV7511_REG_EDID_I2C_ADDR,
		     adv7511->i2c_edid->addr << 1);

	adv7511->i2c_packet = FUNC25(i2c, "packet",
					ADV7511_PACKET_I2C_ADDR_DEFAULT);
	if (FUNC2(adv7511->i2c_packet)) {
		ret = FUNC3(adv7511->i2c_packet);
		goto err_i2c_unregister_edid;
	}

	FUNC33(adv7511->regmap, ADV7511_REG_PACKET_I2C_ADDR,
		     adv7511->i2c_packet->addr << 1);

	ret = FUNC6(adv7511);
	if (ret)
		goto err_i2c_unregister_packet;

	FUNC33(adv7511->regmap, ADV7511_REG_CEC_I2C_ADDR,
		     adv7511->i2c_cec->addr << 1);

	FUNC1(&adv7511->hpd_work, adv7511_hpd_work);

	if (i2c->irq) {
		FUNC28(&adv7511->wq);

		ret = FUNC22(dev, i2c->irq, NULL,
						adv7511_irq_handler,
						IRQF_ONESHOT, FUNC18(dev),
						adv7511);
		if (ret)
			goto err_unregister_cec;
	}

	FUNC10(adv7511);

	FUNC26(i2c, adv7511);

	if (adv7511->type == ADV7511)
		FUNC11(adv7511, &link_config);

	ret = FUNC5(dev, adv7511);
	if (ret)
		goto err_unregister_cec;

	adv7511->bridge.funcs = &adv7511_bridge_funcs;
	adv7511->bridge.of_node = dev->of_node;

	FUNC23(&adv7511->bridge);

	FUNC4(dev, adv7511);
	return 0;

err_unregister_cec:
	FUNC27(adv7511->i2c_cec);
	if (adv7511->cec_clk)
		FUNC15(adv7511->cec_clk);
err_i2c_unregister_packet:
	FUNC27(adv7511->i2c_packet);
err_i2c_unregister_edid:
	FUNC27(adv7511->i2c_edid);
uninit_regulators:
	FUNC12(adv7511);

	return ret;
}