#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int /*<<< orphan*/  PMU_CTRL_LCDNDIF ; 
 int /*<<< orphan*/  PMU_CTRL_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC3 (char*) ; 

void FUNC4(struct device *dev)
{
	struct regmap *pmu_regmap;

	/*
	 * Just bail out of this is not found, we could be running
	 * multiplatform on something else than Nomadik.
	 */
	pmu_regmap =
		FUNC3("stericsson,nomadik-pmu");
	if (FUNC0(pmu_regmap))
		return;

	/*
	 * This bit in the PMU controller multiplexes the two graphics
	 * blocks found in the Nomadik STn8815. The other one is called
	 * MDIF (Master Display Interface) and gets muxed out here.
	 */
	FUNC2(pmu_regmap,
			   PMU_CTRL_OFFSET,
			   PMU_CTRL_LCDNDIF,
			   0);
	FUNC1(dev, "set Nomadik PMU mux to CLCD mode\n");
}