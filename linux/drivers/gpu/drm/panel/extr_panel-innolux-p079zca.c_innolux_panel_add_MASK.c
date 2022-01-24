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
struct panel_desc {int num_supplies; int /*<<< orphan*/ * supply_names; } ;
struct device {int dummy; } ;
struct mipi_dsi_device {struct device dev; } ;
struct TYPE_5__ {struct device* dev; int /*<<< orphan*/ * funcs; } ;
struct innolux_panel {struct mipi_dsi_device* link; TYPE_1__ base; int /*<<< orphan*/ * backlight; int /*<<< orphan*/ * enable_gpio; TYPE_3__* supplies; struct panel_desc const* desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  supply; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct innolux_panel* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*) ; 
 int FUNC7 (struct device*,int,TYPE_3__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  innolux_panel_funcs ; 
 int /*<<< orphan*/  FUNC10 (struct mipi_dsi_device*,struct innolux_panel*) ; 

__attribute__((used)) static int FUNC11(struct mipi_dsi_device *dsi,
			     const struct panel_desc *desc)
{
	struct innolux_panel *innolux;
	struct device *dev = &dsi->dev;
	int err, i;

	innolux = FUNC5(dev, sizeof(*innolux), GFP_KERNEL);
	if (!innolux)
		return -ENOMEM;

	innolux->desc = desc;

	innolux->supplies = FUNC4(dev, desc->num_supplies,
					 sizeof(*innolux->supplies),
					 GFP_KERNEL);
	if (!innolux->supplies)
		return -ENOMEM;

	for (i = 0; i < desc->num_supplies; i++)
		innolux->supplies[i].supply = desc->supply_names[i];

	err = FUNC7(dev, desc->num_supplies,
				      innolux->supplies);
	if (err < 0)
		return err;

	innolux->enable_gpio = FUNC3(dev, "enable",
						       GPIOD_OUT_HIGH);
	if (FUNC0(innolux->enable_gpio)) {
		err = FUNC1(innolux->enable_gpio);
		FUNC2(dev, "failed to get enable gpio: %d\n", err);
		innolux->enable_gpio = NULL;
	}

	innolux->backlight = FUNC6(dev);
	if (FUNC0(innolux->backlight))
		return FUNC1(innolux->backlight);

	FUNC9(&innolux->base);
	innolux->base.funcs = &innolux_panel_funcs;
	innolux->base.dev = dev;

	err = FUNC8(&innolux->base);
	if (err < 0)
		return err;

	FUNC10(dsi, innolux);
	innolux->link = dsi;

	return 0;
}