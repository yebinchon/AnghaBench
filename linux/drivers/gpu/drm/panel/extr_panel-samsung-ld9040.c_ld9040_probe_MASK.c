#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct spi_device {int bits_per_word; struct device dev; } ;
struct TYPE_7__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct ld9040 {TYPE_2__ panel; int /*<<< orphan*/  reset_gpio; TYPE_1__* supplies; scalar_t__ brightness; struct device* dev; } ;
struct TYPE_6__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ld9040* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  ld9040_drm_funcs ; 
 TYPE_1__* ld9040_gammas ; 
 int FUNC9 (struct ld9040*) ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct ld9040*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct ld9040 *ctx;
	int ret;

	ctx = FUNC5(dev, sizeof(struct ld9040), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC10(spi, ctx);

	ctx->dev = dev;
	ctx->brightness = FUNC0(ld9040_gammas) - 1;

	ret = FUNC9(ctx);
	if (ret < 0)
		return ret;

	ctx->supplies[0].supply = "vdd3";
	ctx->supplies[1].supply = "vci";
	ret = FUNC6(dev, FUNC0(ctx->supplies),
				      ctx->supplies);
	if (ret < 0)
		return ret;

	ctx->reset_gpio = FUNC4(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC1(ctx->reset_gpio)) {
		FUNC3(dev, "cannot get reset-gpios %ld\n",
			FUNC2(ctx->reset_gpio));
		return FUNC2(ctx->reset_gpio);
	}

	spi->bits_per_word = 9;
	ret = FUNC11(spi);
	if (ret < 0) {
		FUNC3(dev, "spi setup failed.\n");
		return ret;
	}

	FUNC8(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &ld9040_drm_funcs;

	return FUNC7(&ctx->panel);
}