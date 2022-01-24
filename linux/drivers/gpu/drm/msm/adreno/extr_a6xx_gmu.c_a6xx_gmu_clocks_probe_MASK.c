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
struct a6xx_gmu {int nr_clocks; int /*<<< orphan*/  clocks; int /*<<< orphan*/  core_clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC2(struct a6xx_gmu *gmu)
{
	int ret = FUNC0(gmu->dev, &gmu->clocks);

	if (ret < 1)
		return ret;

	gmu->nr_clocks = ret;

	gmu->core_clk = FUNC1(gmu->clocks,
		gmu->nr_clocks, "gmu");

	return 0;
}