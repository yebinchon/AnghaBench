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
struct TYPE_7__ {struct device* dev; int /*<<< orphan*/ * funcs; } ;
struct wuxga_nt_panel {TYPE_2__* backlight; TYPE_3__ base; TYPE_1__* dsi; int /*<<< orphan*/  supply; int /*<<< orphan*/ * mode; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_mode ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wuxga_nt_panel_funcs ; 

__attribute__((used)) static int FUNC9(struct wuxga_nt_panel *wuxga_nt)
{
	struct device *dev = &wuxga_nt->dsi->dev;
	struct device_node *np;
	int ret;

	wuxga_nt->mode = &default_mode;

	wuxga_nt->supply = FUNC2(dev, "power");
	if (FUNC0(wuxga_nt->supply))
		return FUNC1(wuxga_nt->supply);

	np = FUNC7(dev->of_node, "backlight", 0);
	if (np) {
		wuxga_nt->backlight = FUNC5(np);
		FUNC6(np);

		if (!wuxga_nt->backlight)
			return -EPROBE_DEFER;
	}

	FUNC4(&wuxga_nt->base);
	wuxga_nt->base.funcs = &wuxga_nt_panel_funcs;
	wuxga_nt->base.dev = &wuxga_nt->dsi->dev;

	ret = FUNC3(&wuxga_nt->base);
	if (ret < 0)
		goto put_backlight;

	return 0;

put_backlight:
	if (wuxga_nt->backlight)
		FUNC8(&wuxga_nt->backlight->dev);

	return ret;
}