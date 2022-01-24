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
struct sumo_ps {int num_levels; struct sumo_pl* levels; } ;
struct sumo_pl {int /*<<< orphan*/  vddc_index; int /*<<< orphan*/  sclk; } ;
struct radeon_ps {int /*<<< orphan*/  dclk; int /*<<< orphan*/  vclk; int /*<<< orphan*/  caps; int /*<<< orphan*/  class2; int /*<<< orphan*/  class; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct sumo_ps* FUNC5 (struct radeon_ps*) ; 

void FUNC6(struct radeon_device *rdev,
				struct radeon_ps *rps)
{
	int i;
	struct sumo_ps *ps = FUNC5(rps);

	FUNC2(rps->class, rps->class2);
	FUNC1(rps->caps);
	FUNC0("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
	for (i = 0; i < ps->num_levels; i++) {
		struct sumo_pl *pl = &ps->levels[i];
		FUNC0("\t\tpower level %d    sclk: %u vddc: %u\n",
		       i, pl->sclk,
		       FUNC4(rdev, pl->vddc_index));
	}
	FUNC3(rdev, rps);
}