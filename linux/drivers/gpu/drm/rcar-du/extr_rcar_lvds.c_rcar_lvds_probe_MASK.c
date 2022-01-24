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
struct resource {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * funcs; struct rcar_lvds* driver_private; } ;
struct rcar_lvds {TYPE_2__ bridge; int /*<<< orphan*/  mmio; int /*<<< orphan*/  info; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct resource*) ; 
 struct rcar_lvds* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct rcar_lvds*) ; 
 int /*<<< orphan*/  rcar_lvds_bridge_ops ; 
 int FUNC8 (struct rcar_lvds*) ; 
 int FUNC9 (struct rcar_lvds*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct rcar_lvds *lvds;
	struct resource *mem;
	int ret;

	lvds = FUNC3(&pdev->dev, sizeof(*lvds), GFP_KERNEL);
	if (lvds == NULL)
		return -ENOMEM;

	FUNC7(pdev, lvds);

	lvds->dev = &pdev->dev;
	lvds->info = FUNC5(&pdev->dev);

	ret = FUNC9(lvds);
	if (ret < 0)
		return ret;

	lvds->bridge.driver_private = lvds;
	lvds->bridge.funcs = &rcar_lvds_bridge_ops;
	lvds->bridge.of_node = pdev->dev.of_node;

	mem = FUNC6(pdev, IORESOURCE_MEM, 0);
	lvds->mmio = FUNC2(&pdev->dev, mem);
	if (FUNC0(lvds->mmio))
		return FUNC1(lvds->mmio);

	ret = FUNC8(lvds);
	if (ret < 0)
		return ret;

	FUNC4(&lvds->bridge);

	return 0;
}