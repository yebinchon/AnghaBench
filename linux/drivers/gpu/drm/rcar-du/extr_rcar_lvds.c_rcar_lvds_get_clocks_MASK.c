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
struct TYPE_4__ {void** dotclkin; void* extal; void* mod; } ;
struct rcar_lvds {int /*<<< orphan*/  dev; TYPE_2__ clocks; TYPE_1__* info; } ;
struct TYPE_3__ {int quirks; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int RCAR_LVDS_QUIRK_EXT_PLL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (struct rcar_lvds*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct rcar_lvds *lvds)
{
	lvds->clocks.mod = FUNC3(lvds, NULL, false);
	if (FUNC0(lvds->clocks.mod))
		return FUNC1(lvds->clocks.mod);

	/*
	 * LVDS encoders without an extended PLL have no external clock inputs.
	 */
	if (!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL))
		return 0;

	lvds->clocks.extal = FUNC3(lvds, "extal", true);
	if (FUNC0(lvds->clocks.extal))
		return FUNC1(lvds->clocks.extal);

	lvds->clocks.dotclkin[0] = FUNC3(lvds, "dclkin.0", true);
	if (FUNC0(lvds->clocks.dotclkin[0]))
		return FUNC1(lvds->clocks.dotclkin[0]);

	lvds->clocks.dotclkin[1] = FUNC3(lvds, "dclkin.1", true);
	if (FUNC0(lvds->clocks.dotclkin[1]))
		return FUNC1(lvds->clocks.dotclkin[1]);

	/* At least one input to the PLL must be available. */
	if (!lvds->clocks.extal && !lvds->clocks.dotclkin[0] &&
	    !lvds->clocks.dotclkin[1]) {
		FUNC2(lvds->dev,
			"no input clock (extal, dclkin.0 or dclkin.1)\n");
		return -EINVAL;
	}

	return 0;
}