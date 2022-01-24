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
struct kingdisplay_panel {TYPE_2__ base; TYPE_1__* link; int /*<<< orphan*/ * backlight; int /*<<< orphan*/ * enable_gpio; int /*<<< orphan*/ * supply; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  kingdisplay_panel_funcs ; 

__attribute__((used)) static int FUNC8(struct kingdisplay_panel *kingdisplay)
{
	struct device *dev = &kingdisplay->link->dev;
	int err;

	kingdisplay->supply = FUNC5(dev, "power");
	if (FUNC0(kingdisplay->supply))
		return FUNC1(kingdisplay->supply);

	kingdisplay->enable_gpio = FUNC3(dev, "enable",
							   GPIOD_OUT_HIGH);
	if (FUNC0(kingdisplay->enable_gpio)) {
		err = FUNC1(kingdisplay->enable_gpio);
		FUNC2(dev, "failed to get enable gpio: %d\n", err);
		kingdisplay->enable_gpio = NULL;
	}

	kingdisplay->backlight = FUNC4(dev);
	if (FUNC0(kingdisplay->backlight))
		return FUNC1(kingdisplay->backlight);

	FUNC7(&kingdisplay->base);
	kingdisplay->base.funcs = &kingdisplay_panel_funcs;
	kingdisplay->base.dev = &kingdisplay->link->dev;

	return FUNC6(&kingdisplay->base);
}