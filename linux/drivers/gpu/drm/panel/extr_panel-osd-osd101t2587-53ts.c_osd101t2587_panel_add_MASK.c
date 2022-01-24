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
struct osd101t2587_panel {TYPE_2__ base; TYPE_1__* dsi; int /*<<< orphan*/  backlight; int /*<<< orphan*/  supply; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  osd101t2587_panel_funcs ; 

__attribute__((used)) static int FUNC6(struct osd101t2587_panel *osd101t2587)
{
	struct device *dev = &osd101t2587->dsi->dev;

	osd101t2587->supply = FUNC3(dev, "power");
	if (FUNC0(osd101t2587->supply))
		return FUNC1(osd101t2587->supply);

	osd101t2587->backlight = FUNC2(dev);
	if (FUNC0(osd101t2587->backlight))
		return FUNC1(osd101t2587->backlight);

	FUNC5(&osd101t2587->base);
	osd101t2587->base.funcs = &osd101t2587_panel_funcs;
	osd101t2587->base.dev = &osd101t2587->dsi->dev;

	return FUNC4(&osd101t2587->base);
}