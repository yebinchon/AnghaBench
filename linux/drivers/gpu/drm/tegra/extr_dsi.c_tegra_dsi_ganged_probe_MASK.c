#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_dsi {TYPE_2__* slave; TYPE_1__* dev; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {struct tegra_dsi* master; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 struct platform_device* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct tegra_dsi *dsi)
{
	struct device_node *np;

	np = FUNC2(dsi->dev->of_node, "nvidia,ganged-mode", 0);
	if (np) {
		struct platform_device *gangster = FUNC0(np);

		dsi->slave = FUNC3(gangster);
		FUNC1(np);

		if (!dsi->slave)
			return -EPROBE_DEFER;

		dsi->slave->master = dsi;
	}

	return 0;
}