#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * funcs; struct device* dev; } ;
struct panel_simple {int enabled; int prepared; TYPE_2__* backlight; TYPE_1__* ddc; TYPE_3__ base; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  supply; int /*<<< orphan*/  no_hpd; struct panel_desc const* desc; } ;
struct panel_desc {int dummy; } ;
struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct panel_simple*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct panel_simple* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 TYPE_2__* FUNC9 (struct device_node*) ; 
 TYPE_1__* FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,struct display_timing*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*) ; 
 struct device_node* FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  panel_simple_funcs ; 
 int /*<<< orphan*/  FUNC15 (struct device*,struct panel_simple*,struct display_timing*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct device *dev, const struct panel_desc *desc)
{
	struct device_node *backlight, *ddc;
	struct panel_simple *panel;
	struct display_timing dt;
	int err;

	panel = FUNC5(dev, sizeof(*panel), GFP_KERNEL);
	if (!panel)
		return -ENOMEM;

	panel->enabled = false;
	panel->prepared = false;
	panel->desc = desc;

	panel->no_hpd = FUNC14(dev->of_node, "no-hpd");

	panel->supply = FUNC6(dev, "power");
	if (FUNC0(panel->supply))
		return FUNC1(panel->supply);

	panel->enable_gpio = FUNC4(dev, "enable",
						     GPIOD_OUT_LOW);
	if (FUNC0(panel->enable_gpio)) {
		err = FUNC1(panel->enable_gpio);
		if (err != -EPROBE_DEFER)
			FUNC2(dev, "failed to request GPIO: %d\n", err);
		return err;
	}

	backlight = FUNC13(dev->of_node, "backlight", 0);
	if (backlight) {
		panel->backlight = FUNC9(backlight);
		FUNC12(backlight);

		if (!panel->backlight)
			return -EPROBE_DEFER;
	}

	ddc = FUNC13(dev->of_node, "ddc-i2c-bus", 0);
	if (ddc) {
		panel->ddc = FUNC10(ddc);
		FUNC12(ddc);

		if (!panel->ddc) {
			err = -EPROBE_DEFER;
			goto free_backlight;
		}
	}

	if (!FUNC11(dev->of_node, "panel-timing", &dt))
		FUNC15(dev, panel, &dt);

	FUNC8(&panel->base);
	panel->base.dev = dev;
	panel->base.funcs = &panel_simple_funcs;

	err = FUNC7(&panel->base);
	if (err < 0)
		goto free_ddc;

	FUNC3(dev, panel);

	return 0;

free_ddc:
	if (panel->ddc)
		FUNC16(&panel->ddc->dev);
free_backlight:
	if (panel->backlight)
		FUNC16(&panel->backlight->dev);

	return err;
}