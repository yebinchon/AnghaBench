#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tilcdc_module {int dummy; } ;
struct TYPE_9__ {struct tilcdc_module* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pinctrl {int dummy; } ;
struct panel_module {TYPE_1__* backlight; int /*<<< orphan*/  timings; int /*<<< orphan*/  info; struct tilcdc_module base; struct pinctrl* enable_gpio; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct pinctrl*) ; 
 int FUNC1 (struct pinctrl*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 struct pinctrl* FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 struct panel_module* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct pinctrl* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 struct device_node* FUNC13 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  panel_module_ops ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct tilcdc_module*) ; 
 int /*<<< orphan*/  FUNC16 (struct tilcdc_module*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device_node *bl_node, *node = pdev->dev.of_node;
	struct panel_module *panel_mod;
	struct tilcdc_module *mod;
	struct pinctrl *pinctrl;
	int ret;

	/* bail out early if no DT data: */
	if (!node) {
		FUNC2(&pdev->dev, "device-tree data is missing\n");
		return -ENXIO;
	}

	panel_mod = FUNC6(&pdev->dev, sizeof(*panel_mod), GFP_KERNEL);
	if (!panel_mod)
		return -ENOMEM;

	bl_node = FUNC13(node, "backlight", 0);
	if (bl_node) {
		panel_mod->backlight = FUNC9(bl_node);
		FUNC12(bl_node);

		if (!panel_mod->backlight)
			return -EPROBE_DEFER;

		FUNC3(&pdev->dev, "found backlight\n");
	}

	panel_mod->enable_gpio = FUNC5(&pdev->dev, "enable",
							 GPIOD_OUT_LOW);
	if (FUNC0(panel_mod->enable_gpio)) {
		ret = FUNC1(panel_mod->enable_gpio);
		FUNC2(&pdev->dev, "failed to request enable GPIO\n");
		goto fail_backlight;
	}

	if (panel_mod->enable_gpio)
		FUNC3(&pdev->dev, "found enable GPIO\n");

	mod = &panel_mod->base;
	pdev->dev.platform_data = mod;

	FUNC16(mod, "panel", &panel_module_ops);

	pinctrl = FUNC7(&pdev->dev);
	if (FUNC0(pinctrl))
		FUNC4(&pdev->dev, "pins are not configured\n");

	panel_mod->timings = FUNC10(node);
	if (!panel_mod->timings) {
		FUNC2(&pdev->dev, "could not get panel timings\n");
		ret = -EINVAL;
		goto fail_free;
	}

	panel_mod->info = FUNC11(node);
	if (!panel_mod->info) {
		FUNC2(&pdev->dev, "could not get panel info\n");
		ret = -EINVAL;
		goto fail_timings;
	}

	return 0;

fail_timings:
	FUNC8(panel_mod->timings);

fail_free:
	FUNC15(mod);

fail_backlight:
	if (panel_mod->backlight)
		FUNC14(&panel_mod->backlight->dev);
	return ret;
}