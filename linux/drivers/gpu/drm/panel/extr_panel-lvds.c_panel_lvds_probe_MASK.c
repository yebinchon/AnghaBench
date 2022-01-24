#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_10__ {int /*<<< orphan*/ * funcs; TYPE_4__* dev; } ;
struct panel_lvds {TYPE_1__* backlight; TYPE_4__* dev; TYPE_2__ panel; int /*<<< orphan*/ * reset_gpio; int /*<<< orphan*/ * enable_gpio; int /*<<< orphan*/ * supply; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct panel_lvds*) ; 
 void* FUNC4 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 struct panel_lvds* FUNC5 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_4__*,char*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_1__* FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 struct device_node* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panel_lvds_funcs ; 
 int FUNC12 (struct panel_lvds*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct panel_lvds *lvds;
	struct device_node *np;
	int ret;

	lvds = FUNC5(&pdev->dev, sizeof(*lvds), GFP_KERNEL);
	if (!lvds)
		return -ENOMEM;

	lvds->dev = &pdev->dev;

	ret = FUNC12(lvds);
	if (ret < 0)
		return ret;

	lvds->supply = FUNC6(lvds->dev, "power");
	if (FUNC0(lvds->supply)) {
		ret = FUNC1(lvds->supply);

		if (ret != -ENODEV) {
			if (ret != -EPROBE_DEFER)
				FUNC2(lvds->dev, "failed to request regulator: %d\n",
					ret);
			return ret;
		}

		lvds->supply = NULL;
	}

	/* Get GPIOs and backlight controller. */
	lvds->enable_gpio = FUNC4(lvds->dev, "enable",
						     GPIOD_OUT_LOW);
	if (FUNC0(lvds->enable_gpio)) {
		ret = FUNC1(lvds->enable_gpio);
		FUNC2(lvds->dev, "failed to request %s GPIO: %d\n",
			"enable", ret);
		return ret;
	}

	lvds->reset_gpio = FUNC4(lvds->dev, "reset",
						     GPIOD_OUT_HIGH);
	if (FUNC0(lvds->reset_gpio)) {
		ret = FUNC1(lvds->reset_gpio);
		FUNC2(lvds->dev, "failed to request %s GPIO: %d\n",
			"reset", ret);
		return ret;
	}

	np = FUNC11(lvds->dev->of_node, "backlight", 0);
	if (np) {
		lvds->backlight = FUNC9(np);
		FUNC10(np);

		if (!lvds->backlight)
			return -EPROBE_DEFER;
	}

	/*
	 * TODO: Handle all power supplies specified in the DT node in a generic
	 * way for panels that don't care about power supply ordering. LVDS
	 * panels that require a specific power sequence will need a dedicated
	 * driver.
	 */

	/* Register the panel. */
	FUNC8(&lvds->panel);
	lvds->panel.dev = lvds->dev;
	lvds->panel.funcs = &panel_lvds_funcs;

	ret = FUNC7(&lvds->panel);
	if (ret < 0)
		goto error;

	FUNC3(lvds->dev, lvds);
	return 0;

error:
	FUNC13(&lvds->backlight->dev);
	return ret;
}