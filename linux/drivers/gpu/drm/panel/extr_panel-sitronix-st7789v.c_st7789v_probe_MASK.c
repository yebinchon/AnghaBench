#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * funcs; TYPE_3__* dev; } ;
struct st7789v {TYPE_1__* backlight; TYPE_2__ panel; int /*<<< orphan*/  reset; int /*<<< orphan*/  power; struct spi_device* spi; } ;
struct TYPE_9__ {int /*<<< orphan*/  of_node; } ;
struct spi_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 struct st7789v* FUNC4 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct spi_device*,struct st7789v*) ; 
 int /*<<< orphan*/  st7789v_drm_funcs ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct device_node *backlight;
	struct st7789v *ctx;
	int ret;

	ctx = FUNC4(&spi->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC11(spi, ctx);
	ctx->spi = spi;

	ctx->panel.dev = &spi->dev;
	ctx->panel.funcs = &st7789v_drm_funcs;

	ctx->power = FUNC5(&spi->dev, "power");
	if (FUNC0(ctx->power))
		return FUNC1(ctx->power);

	ctx->reset = FUNC3(&spi->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(ctx->reset)) {
		FUNC2(&spi->dev, "Couldn't get our reset line\n");
		return FUNC1(ctx->reset);
	}

	backlight = FUNC9(spi->dev.of_node, "backlight", 0);
	if (backlight) {
		ctx->backlight = FUNC7(backlight);
		FUNC8(backlight);

		if (!ctx->backlight)
			return -EPROBE_DEFER;
	}

	ret = FUNC6(&ctx->panel);
	if (ret < 0)
		goto err_free_backlight;

	return 0;

err_free_backlight:
	if (ctx->backlight)
		FUNC10(&ctx->backlight->dev);

	return ret;
}