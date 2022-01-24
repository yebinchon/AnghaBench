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
 int /*<<< orphan*/  LVDPLLCR ; 
 int RCAR_LVDS_QUIRK_EXT_PLL ; 
 scalar_t__ FUNC0 (int) ; 
 struct rcar_lvds* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_lvds*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_bridge *bridge)
{
	struct rcar_lvds *lvds = FUNC1(bridge);

	if (FUNC0(!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)))
		return;

	FUNC3(lvds->dev, "disabling LVDS PLL\n");

	FUNC4(lvds, LVDPLLCR, 0);

	FUNC2(lvds->clocks.mod);
}