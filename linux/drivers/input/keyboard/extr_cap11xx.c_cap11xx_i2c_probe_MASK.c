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
typedef  int u32 ;
struct i2c_device_id {size_t driver_data; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;
struct cap11xx_priv {TYPE_2__* idev; scalar_t__* keycodes; int /*<<< orphan*/  regmap; } ;
struct cap11xx_hw_model {int num_channels; unsigned int product_id; int /*<<< orphan*/  num_leds; } ;
struct TYPE_5__ {unsigned int vendor; unsigned int product; unsigned int version; int /*<<< orphan*/  bustype; } ;
struct TYPE_6__ {char* name; int keycodesize; int keycodemax; int /*<<< orphan*/  close; int /*<<< orphan*/  open; TYPE_1__ id; scalar_t__* keycode; int /*<<< orphan*/ * keybit; int /*<<< orphan*/ * evbit; } ;

/* Variables and functions */
 size_t FUNC0 (struct cap11xx_hw_model*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_I2C ; 
 unsigned int CAP11XX_MANUFACTURER_ID ; 
 int /*<<< orphan*/  CAP11XX_REG_CONFIG2 ; 
 int /*<<< orphan*/  CAP11XX_REG_CONFIG2_ALT_POL ; 
 int /*<<< orphan*/  CAP11XX_REG_MAIN_CONTROL ; 
 int /*<<< orphan*/  CAP11XX_REG_MAIN_CONTROL_GAIN_MASK ; 
 int CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT ; 
 int /*<<< orphan*/  CAP11XX_REG_MANUFACTURER_ID ; 
 int /*<<< orphan*/  CAP11XX_REG_PRODUCT_ID ; 
 int /*<<< orphan*/  CAP11XX_REG_REPEAT_RATE ; 
 int /*<<< orphan*/  CAP11XX_REG_REVISION ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  EV_KEY ; 
 scalar_t__ EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ KEY_A ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct cap11xx_hw_model* cap11xx_devices ; 
 int FUNC6 (struct device*,struct cap11xx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cap11xx_input_close ; 
 int /*<<< orphan*/  cap11xx_input_open ; 
 int /*<<< orphan*/  cap11xx_regmap_config ; 
 int /*<<< orphan*/  FUNC7 (struct cap11xx_priv*,int) ; 
 int /*<<< orphan*/  cap11xx_thread_func ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 TYPE_2__* FUNC11 (struct device*) ; 
 struct cap11xx_priv* FUNC12 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cap11xx_priv*) ; 
 int FUNC15 (int) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,struct cap11xx_priv*) ; 
 int FUNC18 (struct device_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  keycodes ; 
 scalar_t__ FUNC20 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct device_node*,char*,scalar_t__*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct cap11xx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC27(struct i2c_client *i2c_client,
			     const struct i2c_device_id *id)
{
	struct device *dev = &i2c_client->dev;
	struct cap11xx_priv *priv;
	struct device_node *node;
	const struct cap11xx_hw_model *cap;
	int i, error, irq, gain = 0;
	unsigned int val, rev;
	u32 gain32;

	if (id->driver_data >= FUNC0(cap11xx_devices)) {
		FUNC8(dev, "Invalid device ID %lu\n", id->driver_data);
		return -EINVAL;
	}

	cap = &cap11xx_devices[id->driver_data];
	if (!cap || !cap->num_channels) {
		FUNC8(dev, "Invalid device configuration\n");
		return -EINVAL;
	}

	priv = FUNC12(dev,
			    FUNC26(priv, keycodes, cap->num_channels),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regmap = FUNC13(i2c_client, &cap11xx_regmap_config);
	if (FUNC2(priv->regmap))
		return FUNC3(priv->regmap);

	error = FUNC23(priv->regmap, CAP11XX_REG_PRODUCT_ID, &val);
	if (error)
		return error;

	if (val != cap->product_id) {
		FUNC8(dev, "Product ID: Got 0x%02x, expected 0x%02x\n",
			val, cap->product_id);
		return -ENXIO;
	}

	error = FUNC23(priv->regmap, CAP11XX_REG_MANUFACTURER_ID, &val);
	if (error)
		return error;

	if (val != CAP11XX_MANUFACTURER_ID) {
		FUNC8(dev, "Manufacturer ID: Got 0x%02x, expected 0x%02x\n",
			val, CAP11XX_MANUFACTURER_ID);
		return -ENXIO;
	}

	error = FUNC23(priv->regmap, CAP11XX_REG_REVISION, &rev);
	if (error < 0)
		return error;

	FUNC9(dev, "CAP11XX detected, revision 0x%02x\n", rev);
	node = dev->of_node;

	if (!FUNC21(node, "microchip,sensor-gain", &gain32)) {
		if (FUNC19(gain32) && gain32 <= 8)
			gain = FUNC15(gain32);
		else
			FUNC8(dev, "Invalid sensor-gain value %d\n", gain32);
	}

	if (FUNC20(node, "microchip,irq-active-high")) {
		error = FUNC24(priv->regmap, CAP11XX_REG_CONFIG2,
					   CAP11XX_REG_CONFIG2_ALT_POL, 0);
		if (error)
			return error;
	}

	/* Provide some useful defaults */
	for (i = 0; i < cap->num_channels; i++)
		priv->keycodes[i] = KEY_A + i;

	FUNC22(node, "linux,keycodes",
				   priv->keycodes, cap->num_channels);

	error = FUNC24(priv->regmap, CAP11XX_REG_MAIN_CONTROL,
				   CAP11XX_REG_MAIN_CONTROL_GAIN_MASK,
				   gain << CAP11XX_REG_MAIN_CONTROL_GAIN_SHIFT);
	if (error)
		return error;

	/* Disable autorepeat. The Linux input system has its own handling. */
	error = FUNC25(priv->regmap, CAP11XX_REG_REPEAT_RATE, 0);
	if (error)
		return error;

	priv->idev = FUNC11(dev);
	if (!priv->idev)
		return -ENOMEM;

	priv->idev->name = "CAP11XX capacitive touch sensor";
	priv->idev->id.bustype = BUS_I2C;
	priv->idev->evbit[0] = FUNC1(EV_KEY);

	if (FUNC20(node, "autorepeat"))
		FUNC5(EV_REP, priv->idev->evbit);

	for (i = 0; i < cap->num_channels; i++)
		FUNC5(priv->keycodes[i], priv->idev->keybit);

	FUNC4(KEY_RESERVED, priv->idev->keybit);

	priv->idev->keycode = priv->keycodes;
	priv->idev->keycodesize = sizeof(priv->keycodes[0]);
	priv->idev->keycodemax = cap->num_channels;

	priv->idev->id.vendor = CAP11XX_MANUFACTURER_ID;
	priv->idev->id.product = cap->product_id;
	priv->idev->id.version = rev;

	priv->idev->open = cap11xx_input_open;
	priv->idev->close = cap11xx_input_close;

	error = FUNC6(dev, priv, cap->num_leds);
	if (error)
		return error;

	FUNC17(priv->idev, priv);

	/*
	 * Put the device in deep sleep mode for now.
	 * ->open() will bring it back once the it is actually needed.
	 */
	FUNC7(priv, true);

	error = FUNC16(priv->idev);
	if (error)
		return error;

	irq = FUNC18(node, 0);
	if (!irq) {
		FUNC8(dev, "Unable to parse or map IRQ\n");
		return -ENXIO;
	}

	error = FUNC14(dev, irq, NULL, cap11xx_thread_func,
					  IRQF_ONESHOT, FUNC10(dev), priv);
	if (error)
		return error;

	return 0;
}