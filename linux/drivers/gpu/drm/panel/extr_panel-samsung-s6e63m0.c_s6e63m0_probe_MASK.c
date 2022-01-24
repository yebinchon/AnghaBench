#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct spi_device {int bits_per_word; int /*<<< orphan*/  mode; struct device dev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct s6e63m0 {int enabled; int prepared; TYPE_1__ panel; int /*<<< orphan*/  reset_gpio; TYPE_3__* supplies; struct device* dev; } ;
struct TYPE_6__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPI_MODE_3 ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct s6e63m0* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (struct s6e63m0*) ; 
 int /*<<< orphan*/  s6e63m0_drm_funcs ; 
 int /*<<< orphan*/  FUNC10 (struct spi_device*,struct s6e63m0*) ; 
 int FUNC11 (struct spi_device*) ; 

__attribute__((used)) static int FUNC12(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct s6e63m0 *ctx;
	int ret;

	ctx = FUNC5(dev, sizeof(struct s6e63m0), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC10(spi, ctx);

	ctx->dev = dev;
	ctx->enabled = false;
	ctx->prepared = false;

	ctx->supplies[0].supply = "vdd3";
	ctx->supplies[1].supply = "vci";
	ret = FUNC6(dev, FUNC0(ctx->supplies),
				      ctx->supplies);
	if (ret < 0) {
		FUNC1(dev, "failed to get regulators: %d\n", ret);
		return ret;
	}

	ctx->reset_gpio = FUNC4(dev, "reset", GPIOD_OUT_HIGH);
	if (FUNC2(ctx->reset_gpio)) {
		FUNC1(dev, "cannot get reset-gpios %ld\n",
			      FUNC3(ctx->reset_gpio));
		return FUNC3(ctx->reset_gpio);
	}

	spi->bits_per_word = 9;
	spi->mode = SPI_MODE_3;
	ret = FUNC11(spi);
	if (ret < 0) {
		FUNC1(dev, "spi setup failed.\n");
		return ret;
	}

	FUNC8(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &s6e63m0_drm_funcs;

	ret = FUNC9(ctx);
	if (ret < 0)
		return ret;

	return FUNC7(&ctx->panel);
}