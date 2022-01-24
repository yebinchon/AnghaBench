#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct tda9950_priv {int /*<<< orphan*/  notify; int /*<<< orphan*/  adap; struct device* hdmi; struct tda9950_glue* glue; struct i2c_client* client; } ;
struct tda9950_glue {unsigned long irq_flags; struct device* parent; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct tda9950_glue* platform_data; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_CAP_DEFAULTS ; 
 int /*<<< orphan*/  CEC_MAX_LOG_ADDRS ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 unsigned long IRQF_ONESHOT ; 
 unsigned long IRQF_SHARED ; 
 unsigned long IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_CVR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tda9950_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int FUNC11 (struct device*,int /*<<< orphan*/ ,struct tda9950_priv*) ; 
 struct tda9950_priv* FUNC12 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ,struct tda9950_priv*) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct tda9950_priv*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct i2c_client*,struct tda9950_priv*) ; 
 int /*<<< orphan*/  tda9950_cec_del ; 
 int /*<<< orphan*/  tda9950_cec_ops ; 
 int FUNC17 (struct device*,struct tda9950_glue*) ; 
 int FUNC18 (struct tda9950_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct tda9950_priv*) ; 
 int /*<<< orphan*/  tda9950_irq ; 
 int FUNC20 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct tda9950_glue *glue = client->dev.platform_data;
	struct device *dev = &client->dev;
	struct tda9950_priv *priv;
	unsigned long irqflags;
	int ret;
	u8 cvr;

	/*
	 * We must have I2C functionality: our multi-byte accesses
	 * must be performed as a single contiguous transaction.
	 */
	if (!FUNC15(client->adapter, I2C_FUNC_I2C)) {
		FUNC8(&client->dev,
			"adapter does not support I2C functionality\n");
		return -ENXIO;
	}

	/* We must have an interrupt to be functional. */
	if (client->irq <= 0) {
		FUNC8(&client->dev, "driver requires an interrupt\n");
		return -ENXIO;
	}

	priv = FUNC12(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->client = client;
	priv->glue = glue;

	FUNC16(client, priv);

	/*
	 * If we're part of a TDA998x, we want the class devices to be
	 * associated with the HDMI Tx so we have a tight relationship
	 * between the HDMI interface and the CEC interface.
	 */
	priv->hdmi = dev;
	if (glue && glue->parent)
		priv->hdmi = glue->parent;

	priv->adap = FUNC2(&tda9950_cec_ops, priv, "tda9950",
					  CEC_CAP_DEFAULTS,
					  CEC_MAX_LOG_ADDRS);
	if (FUNC0(priv->adap))
		return FUNC1(priv->adap);

	ret = FUNC11(dev, tda9950_cec_del, priv);
	if (ret) {
		FUNC3(priv->adap);
		return ret;
	}

	ret = FUNC17(dev, glue);
	if (ret)
		return ret;

	ret = FUNC18(priv);
	if (ret)
		return ret;

	cvr = FUNC20(client, REG_CVR);

	FUNC9(&client->dev,
		 "TDA9950 CEC interface, hardware version %u.%u\n",
		 cvr >> 4, cvr & 15);

	FUNC19(priv);

	irqflags = IRQF_TRIGGER_FALLING;
	if (glue)
		irqflags = glue->irq_flags;

	ret = FUNC14(dev, client->irq, NULL, tda9950_irq,
					irqflags | IRQF_SHARED | IRQF_ONESHOT,
					FUNC10(&client->dev), priv);
	if (ret < 0)
		return ret;

	priv->notify = FUNC4(priv->hdmi);
	if (!priv->notify)
		return -ENOMEM;

	ret = FUNC6(priv->adap, priv->hdmi);
	if (ret < 0) {
		FUNC5(priv->notify);
		return ret;
	}

	/*
	 * CEC documentation says we must not call cec_delete_adapter
	 * after a successful call to cec_register_adapter().
	 */
	FUNC13(dev, tda9950_cec_del, priv);

	FUNC7(priv->adap, priv->notify);

	return 0;
}