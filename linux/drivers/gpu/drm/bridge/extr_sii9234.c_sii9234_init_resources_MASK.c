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
struct sii9234 {struct i2c_client** client; TYPE_1__* dev; TYPE_2__* supplies; int /*<<< orphan*/  gpio_reset; } ;
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_6__ {char* supply; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 size_t I2C_CBUS ; 
 int /*<<< orphan*/  I2C_CBUS_ADDR ; 
 size_t I2C_HDMI ; 
 int /*<<< orphan*/  I2C_HDMI_ADDR ; 
 size_t I2C_MHL ; 
 size_t I2C_TPI ; 
 int /*<<< orphan*/  I2C_TPI_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int,TYPE_2__*) ; 
 void* FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC7(struct sii9234 *ctx,
				  struct i2c_client *client)
{
	struct i2c_adapter *adapter = client->adapter;
	int ret;

	if (!ctx->dev->of_node) {
		FUNC2(ctx->dev, "not DT device\n");
		return -ENODEV;
	}

	ctx->gpio_reset = FUNC3(ctx->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ctx->gpio_reset)) {
		FUNC2(ctx->dev, "failed to get reset gpio from DT\n");
		return FUNC1(ctx->gpio_reset);
	}

	ctx->supplies[0].supply = "avcc12";
	ctx->supplies[1].supply = "avcc33";
	ctx->supplies[2].supply = "iovcc18";
	ctx->supplies[3].supply = "cvcc12";
	ret = FUNC4(ctx->dev, 4, ctx->supplies);
	if (ret) {
		FUNC2(ctx->dev, "regulator_bulk failed\n");
		return ret;
	}

	ctx->client[I2C_MHL] = client;

	ctx->client[I2C_TPI] = FUNC5(adapter, I2C_TPI_ADDR);
	if (!ctx->client[I2C_TPI]) {
		FUNC2(ctx->dev, "failed to create TPI client\n");
		return -ENODEV;
	}

	ctx->client[I2C_HDMI] = FUNC5(adapter, I2C_HDMI_ADDR);
	if (!ctx->client[I2C_HDMI]) {
		FUNC2(ctx->dev, "failed to create HDMI RX client\n");
		goto fail_tpi;
	}

	ctx->client[I2C_CBUS] = FUNC5(adapter, I2C_CBUS_ADDR);
	if (!ctx->client[I2C_CBUS]) {
		FUNC2(ctx->dev, "failed to create CBUS client\n");
		goto fail_hdmi;
	}

	return 0;

fail_hdmi:
	FUNC6(ctx->client[I2C_HDMI]);
fail_tpi:
	FUNC6(ctx->client[I2C_TPI]);

	return -ENODEV;
}