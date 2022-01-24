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
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; } ;
struct sii8620 {int /*<<< orphan*/  extcon; TYPE_1__ bridge; struct device* dev; TYPE_2__* supplies; int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  clk_xtal; int /*<<< orphan*/  mt_queue; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; } ;
struct TYPE_4__ {char* supply; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  IRQ_NOAUTOEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct sii8620* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,TYPE_2__*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct sii8620*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct sii8620*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sii8620_bridge_funcs ; 
 int /*<<< orphan*/  FUNC13 (struct sii8620*) ; 
 int FUNC14 (struct sii8620*) ; 
 int /*<<< orphan*/  sii8620_irq_thread ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct sii8620 *ctx;
	int ret;

	ctx = FUNC6(dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->dev = dev;
	FUNC12(&ctx->lock);
	FUNC0(&ctx->mt_queue);

	ctx->clk_xtal = FUNC4(dev, "xtal");
	if (FUNC1(ctx->clk_xtal)) {
		FUNC3(dev, "failed to get xtal clock from DT\n");
		return FUNC2(ctx->clk_xtal);
	}

	if (!client->irq) {
		FUNC3(dev, "no irq provided\n");
		return -EINVAL;
	}
	FUNC11(client->irq, IRQ_NOAUTOEN);
	ret = FUNC8(dev, client->irq, NULL,
					sii8620_irq_thread,
					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
					"sii8620", ctx);
	if (ret < 0) {
		FUNC3(dev, "failed to install IRQ handler\n");
		return ret;
	}

	ctx->gpio_reset = FUNC5(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(ctx->gpio_reset)) {
		FUNC3(dev, "failed to get reset gpio from DT\n");
		return FUNC2(ctx->gpio_reset);
	}

	ctx->supplies[0].supply = "cvcc10";
	ctx->supplies[1].supply = "iovcc18";
	ret = FUNC7(dev, 2, ctx->supplies);
	if (ret)
		return ret;

	ret = FUNC14(ctx);
	if (ret < 0) {
		FUNC3(ctx->dev, "failed to initialize EXTCON\n");
		return ret;
	}

	FUNC10(client, ctx);

	ctx->bridge.funcs = &sii8620_bridge_funcs;
	ctx->bridge.of_node = dev->of_node;
	FUNC9(&ctx->bridge);

	if (!ctx->extcon)
		FUNC13(ctx);

	return 0;
}