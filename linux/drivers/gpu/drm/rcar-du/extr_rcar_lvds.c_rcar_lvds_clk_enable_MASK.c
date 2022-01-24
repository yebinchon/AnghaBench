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
struct TYPE_4__ {int /*<<< orphan*/  mod; } ;
struct rcar_lvds {TYPE_2__ clocks; int /*<<< orphan*/  dev; TYPE_1__* info; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_3__ {int quirks; } ;

/* Variables and functions */
 int ENODEV ; 
 int RCAR_LVDS_QUIRK_EXT_PLL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_lvds*,unsigned long,int) ; 
 struct rcar_lvds* FUNC2 (struct drm_bridge*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long) ; 

int FUNC5(struct drm_bridge *bridge, unsigned long freq)
{
	struct rcar_lvds *lvds = FUNC2(bridge);
	int ret;

	if (FUNC0(!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)))
		return -ENODEV;

	FUNC4(lvds->dev, "enabling LVDS PLL, freq=%luHz\n", freq);

	ret = FUNC3(lvds->clocks.mod);
	if (ret < 0)
		return ret;

	FUNC1(lvds, freq, true);

	return 0;
}