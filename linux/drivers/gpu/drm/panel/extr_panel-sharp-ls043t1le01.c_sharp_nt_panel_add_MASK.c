#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device* dev; int /*<<< orphan*/ * funcs; } ;
struct sharp_nt_panel {TYPE_2__ base; TYPE_1__* dsi; int /*<<< orphan*/ * backlight; int /*<<< orphan*/ * reset_gpio; int /*<<< orphan*/ * supply; int /*<<< orphan*/ * mode; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_mode ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sharp_nt_panel_funcs ; 

__attribute__((used)) static int FUNC9(struct sharp_nt_panel *sharp_nt)
{
	struct device *dev = &sharp_nt->dsi->dev;

	sharp_nt->mode = &default_mode;

	sharp_nt->supply = FUNC5(dev, "avdd");
	if (FUNC0(sharp_nt->supply))
		return FUNC1(sharp_nt->supply);

	sharp_nt->reset_gpio = FUNC3(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(sharp_nt->reset_gpio)) {
		FUNC2(dev, "cannot get reset-gpios %ld\n",
			FUNC1(sharp_nt->reset_gpio));
		sharp_nt->reset_gpio = NULL;
	} else {
		FUNC8(sharp_nt->reset_gpio, 0);
	}

	sharp_nt->backlight = FUNC4(dev);

	if (FUNC0(sharp_nt->backlight))
		return FUNC1(sharp_nt->backlight);

	FUNC7(&sharp_nt->base);
	sharp_nt->base.funcs = &sharp_nt_panel_funcs;
	sharp_nt->base.dev = &sharp_nt->dsi->dev;

	return FUNC6(&sharp_nt->base);
}