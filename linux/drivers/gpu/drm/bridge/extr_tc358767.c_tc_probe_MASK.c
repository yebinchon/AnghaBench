#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct TYPE_3__ {char* name; int /*<<< orphan*/  transfer; struct device* dev; } ;
struct tc_data {int hpd_pin; int have_irq; int rev; int assr; TYPE_2__ bridge; TYPE_1__ aux; struct device* dev; void* regmap; void* refclk; void* reset_gpio; void* sd_gpio; int /*<<< orphan*/  panel; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENBBM ; 
 int ENBDSIRX ; 
 int ENBHDCP ; 
 int ENBLCD0 ; 
 int ENBREG ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 int GPIOM ; 
 int INTCTL_G ; 
 int INT_GP0_LCNT ; 
 int INT_GP1_LCNT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int INT_SYSERR ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int SYSRSTENB ; 
 int /*<<< orphan*/  TC_IDREG ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 void* FUNC7 (struct device*,char*) ; 
 void* FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct tc_data* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct tc_data*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct tc_data*) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC18 (void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (void*,int,int,int) ; 
 int /*<<< orphan*/  FUNC20 (void*,int,int) ; 
 int FUNC21 (struct tc_data*) ; 
 int /*<<< orphan*/  tc_aux_transfer ; 
 int /*<<< orphan*/  tc_bridge_funcs ; 
 int /*<<< orphan*/  tc_irq_handler ; 
 int /*<<< orphan*/  tc_regmap_config ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 

__attribute__((used)) static int FUNC23(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct tc_data *tc;
	int ret;

	tc = FUNC9(dev, sizeof(*tc), GFP_KERNEL);
	if (!tc)
		return -ENOMEM;

	tc->dev = dev;

	/* port@2 is the output port */
	ret = FUNC14(dev->of_node, 2, 0, &tc->panel, NULL);
	if (ret && ret != -ENODEV)
		return ret;

	/* Shut down GPIO is optional */
	tc->sd_gpio = FUNC8(dev, "shutdown", GPIOD_OUT_HIGH);
	if (FUNC3(tc->sd_gpio))
		return FUNC4(tc->sd_gpio);

	if (tc->sd_gpio) {
		FUNC15(tc->sd_gpio, 0);
		FUNC22(5000, 10000);
	}

	/* Reset GPIO is optional */
	tc->reset_gpio = FUNC8(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC3(tc->reset_gpio))
		return FUNC4(tc->reset_gpio);

	if (tc->reset_gpio) {
		FUNC15(tc->reset_gpio, 1);
		FUNC22(5000, 10000);
	}

	tc->refclk = FUNC7(dev, "ref");
	if (FUNC3(tc->refclk)) {
		ret = FUNC4(tc->refclk);
		FUNC6(dev, "Failed to get refclk: %d\n", ret);
		return ret;
	}

	tc->regmap = FUNC10(client, &tc_regmap_config);
	if (FUNC3(tc->regmap)) {
		ret = FUNC4(tc->regmap);
		FUNC6(dev, "Failed to initialize regmap: %d\n", ret);
		return ret;
	}

	ret = FUNC17(dev->of_node, "toshiba,hpd-pin",
				   &tc->hpd_pin);
	if (ret) {
		tc->hpd_pin = -ENODEV;
	} else {
		if (tc->hpd_pin < 0 || tc->hpd_pin > 1) {
			FUNC6(dev, "failed to parse HPD number\n");
			return ret;
		}
	}

	if (client->irq > 0) {
		/* enable SysErr */
		FUNC20(tc->regmap, INTCTL_G, INT_SYSERR);

		ret = FUNC11(dev, client->irq,
						NULL, tc_irq_handler,
						IRQF_ONESHOT,
						"tc358767-irq", tc);
		if (ret) {
			FUNC6(dev, "failed to register dp interrupt\n");
			return ret;
		}

		tc->have_irq = true;
	}

	ret = FUNC18(tc->regmap, TC_IDREG, &tc->rev);
	if (ret) {
		FUNC6(tc->dev, "can not read device ID: %d\n", ret);
		return ret;
	}

	if ((tc->rev != 0x6601) && (tc->rev != 0x6603)) {
		FUNC6(tc->dev, "invalid device ID: 0x%08x\n", tc->rev);
		return -EINVAL;
	}

	tc->assr = (tc->rev == 0x6601); /* Enable ASSR for eDP panels */

	if (!tc->reset_gpio) {
		/*
		 * If the reset pin isn't present, do a software reset. It isn't
		 * as thorough as the hardware reset, as we can't reset the I2C
		 * communication block for obvious reasons, but it's getting the
		 * chip into a defined state.
		 */
		FUNC19(tc->regmap, SYSRSTENB,
				ENBLCD0 | ENBBM | ENBDSIRX | ENBREG | ENBHDCP,
				0);
		FUNC19(tc->regmap, SYSRSTENB,
				ENBLCD0 | ENBBM | ENBDSIRX | ENBREG | ENBHDCP,
				ENBLCD0 | ENBBM | ENBDSIRX | ENBREG | ENBHDCP);
		FUNC22(5000, 10000);
	}

	if (tc->hpd_pin >= 0) {
		u32 lcnt_reg = tc->hpd_pin == 0 ? INT_GP0_LCNT : INT_GP1_LCNT;
		u32 h_lc = FUNC1(tc->hpd_pin) | FUNC2(tc->hpd_pin);

		/* Set LCNT to 2ms */
		FUNC20(tc->regmap, lcnt_reg,
			     FUNC5(tc->refclk) * 2 / 1000);
		/* We need the "alternate" mode for HPD */
		FUNC20(tc->regmap, GPIOM, FUNC0(tc->hpd_pin));

		if (tc->have_irq) {
			/* enable H & LC */
			FUNC19(tc->regmap, INTCTL_G, h_lc, h_lc);
		}
	}

	ret = FUNC21(tc);
	if (ret)
		return ret;

	/* Register DP AUX channel */
	tc->aux.name = "TC358767 AUX i2c adapter";
	tc->aux.dev = tc->dev;
	tc->aux.transfer = tc_aux_transfer;
	ret = FUNC13(&tc->aux);
	if (ret)
		return ret;

	tc->bridge.funcs = &tc_bridge_funcs;
	tc->bridge.of_node = dev->of_node;
	FUNC12(&tc->bridge);

	FUNC16(client, tc);

	return 0;
}