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
struct TYPE_5__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct truly_nt35597 {TYPE_1__ panel; void* mode_gpio; void* reset_gpio; TYPE_3__* supplies; struct nt35597_config* config; struct device* dev; } ;
struct nt35597_config {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regulator_names ; 
 int /*<<< orphan*/  truly_nt35597_drm_funcs ; 

__attribute__((used)) static int FUNC9(struct truly_nt35597 *ctx)
{
	struct device *dev = ctx->dev;
	int ret, i;
	const struct nt35597_config *config;

	config = ctx->config;
	for (i = 0; i < FUNC0(ctx->supplies); i++)
		ctx->supplies[i].supply = regulator_names[i];

	ret = FUNC5(dev, FUNC0(ctx->supplies),
				      ctx->supplies);
	if (ret < 0)
		return ret;

	ctx->reset_gpio = FUNC4(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC2(ctx->reset_gpio)) {
		FUNC1(dev, "cannot get reset gpio %ld\n",
			FUNC3(ctx->reset_gpio));
		return FUNC3(ctx->reset_gpio);
	}

	ctx->mode_gpio = FUNC4(dev, "mode", GPIOD_OUT_LOW);
	if (FUNC2(ctx->mode_gpio)) {
		FUNC1(dev, "cannot get mode gpio %ld\n",
			FUNC3(ctx->mode_gpio));
		return FUNC3(ctx->mode_gpio);
	}

	/* dual port */
	FUNC8(ctx->mode_gpio, 0);

	FUNC7(&ctx->panel);
	ctx->panel.dev = dev;
	ctx->panel.funcs = &truly_nt35597_drm_funcs;
	FUNC6(&ctx->panel);

	return 0;
}