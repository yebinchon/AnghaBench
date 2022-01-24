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
struct TYPE_2__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct sii9234 {TYPE_1__ bridge; int /*<<< orphan*/  lock; struct device* dev; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct sii9234* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct sii9234*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct sii9234*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sii9234_bridge_funcs ; 
 int /*<<< orphan*/  FUNC8 (struct sii9234*) ; 
 int FUNC9 (struct sii9234*,struct i2c_client*) ; 
 int /*<<< orphan*/  sii9234_irq_thread ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct sii9234 *ctx;
	struct device *dev = &client->dev;
	int ret;

	ctx = FUNC1(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;
	FUNC7(&ctx->lock);

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC0(dev, "I2C adapter lacks SMBUS feature\n");
		return -EIO;
	}

	if (!client->irq) {
		FUNC0(dev, "no irq provided\n");
		return -EINVAL;
	}

	FUNC6(client->irq, IRQ_NOAUTOEN);
	ret = FUNC2(dev, client->irq, NULL,
					sii9234_irq_thread,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"sii9234", ctx);
	if (ret < 0) {
		FUNC0(dev, "failed to install IRQ handler\n");
		return ret;
	}

	ret = FUNC9(ctx, client);
	if (ret < 0)
		return ret;

	FUNC5(client, ctx);

	ctx->bridge.funcs = &sii9234_bridge_funcs;
	ctx->bridge.of_node = dev->of_node;
	FUNC3(&ctx->bridge);

	FUNC8(ctx);

	return 0;
}