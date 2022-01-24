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
struct rv6xx_pl {int /*<<< orphan*/  vddc; int /*<<< orphan*/  mclk; int /*<<< orphan*/  sclk; } ;
struct rv6xx_ps {struct rv6xx_pl high; struct rv6xx_pl medium; struct rv6xx_pl low; } ;
struct radeon_ps {int /*<<< orphan*/  dclk; int /*<<< orphan*/  vclk; int /*<<< orphan*/  caps; int /*<<< orphan*/  class2; int /*<<< orphan*/  class; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 struct rv6xx_ps* FUNC4 (struct radeon_ps*) ; 

void FUNC5(struct radeon_device *rdev,
				 struct radeon_ps *rps)
{
	struct rv6xx_ps *ps = FUNC4(rps);
	struct rv6xx_pl *pl;

	FUNC2(rps->class, rps->class2);
	FUNC1(rps->caps);
	FUNC0("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
	pl = &ps->low;
	FUNC0("\t\tpower level 0    sclk: %u mclk: %u vddc: %u\n",
	       pl->sclk, pl->mclk, pl->vddc);
	pl = &ps->medium;
	FUNC0("\t\tpower level 1    sclk: %u mclk: %u vddc: %u\n",
	       pl->sclk, pl->mclk, pl->vddc);
	pl = &ps->high;
	FUNC0("\t\tpower level 2    sclk: %u mclk: %u vddc: %u\n",
	       pl->sclk, pl->mclk, pl->vddc);
	FUNC3(rdev, rps);
}