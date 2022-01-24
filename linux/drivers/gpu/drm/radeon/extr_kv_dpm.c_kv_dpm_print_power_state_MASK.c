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
struct radeon_ps {int /*<<< orphan*/  dclk; int /*<<< orphan*/  vclk; int /*<<< orphan*/  caps; int /*<<< orphan*/  class2; int /*<<< orphan*/  class; } ;
struct radeon_device {int dummy; } ;
struct kv_ps {int num_levels; struct kv_pl* levels; } ;
struct kv_pl {int /*<<< orphan*/  vddc_index; int /*<<< orphan*/  sclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct kv_ps* FUNC1 (struct radeon_ps*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ps*) ; 

void FUNC6(struct radeon_device *rdev,
			      struct radeon_ps *rps)
{
	int i;
	struct kv_ps *ps = FUNC1(rps);

	FUNC4(rps->class, rps->class2);
	FUNC3(rps->caps);
	FUNC2("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
	for (i = 0; i < ps->num_levels; i++) {
		struct kv_pl *pl = &ps->levels[i];
		FUNC2("\t\tpower level %d    sclk: %u vddc: %u\n",
		       i, pl->sclk,
		       FUNC0(rdev, pl->vddc_index));
	}
	FUNC5(rdev, rps);
}