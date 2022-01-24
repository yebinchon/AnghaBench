#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device_node* of_node; TYPE_2__* dev; } ;
struct tegra_rgb {TYPE_1__ output; void* clk_parent; void* clk; struct tegra_dc* dc; } ;
struct tegra_dc {TYPE_1__* rgb; TYPE_2__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 void* FUNC4 (TYPE_2__*,char*) ; 
 struct tegra_rgb* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (TYPE_1__*) ; 

int FUNC9(struct tegra_dc *dc)
{
	struct device_node *np;
	struct tegra_rgb *rgb;
	int err;

	np = FUNC7(dc->dev->of_node, "rgb");
	if (!np || !FUNC6(np))
		return -ENODEV;

	rgb = FUNC5(dc->dev, sizeof(*rgb), GFP_KERNEL);
	if (!rgb)
		return -ENOMEM;

	rgb->output.dev = dc->dev;
	rgb->output.of_node = np;
	rgb->dc = dc;

	err = FUNC8(&rgb->output);
	if (err < 0)
		return err;

	rgb->clk = FUNC4(dc->dev, NULL);
	if (FUNC0(rgb->clk)) {
		FUNC3(dc->dev, "failed to get clock\n");
		return FUNC1(rgb->clk);
	}

	rgb->clk_parent = FUNC4(dc->dev, "parent");
	if (FUNC0(rgb->clk_parent)) {
		FUNC3(dc->dev, "failed to get parent clock\n");
		return FUNC1(rgb->clk_parent);
	}

	err = FUNC2(rgb->clk, rgb->clk_parent);
	if (err < 0) {
		FUNC3(dc->dev, "failed to set parent clock: %d\n", err);
		return err;
	}

	dc->rgb = &rgb->output;

	return 0;
}