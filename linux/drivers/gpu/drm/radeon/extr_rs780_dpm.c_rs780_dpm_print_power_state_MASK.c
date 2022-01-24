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
struct igp_ps {int /*<<< orphan*/  max_voltage; int /*<<< orphan*/  sclk_high; int /*<<< orphan*/  min_voltage; int /*<<< orphan*/  sclk_low; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct radeon_ps*) ; 
 struct igp_ps* FUNC4 (struct radeon_ps*) ; 

void FUNC5(struct radeon_device *rdev,
				 struct radeon_ps *rps)
{
	struct igp_ps *ps = FUNC4(rps);

	FUNC2(rps->class, rps->class2);
	FUNC1(rps->caps);
	FUNC0("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
	FUNC0("\t\tpower level 0    sclk: %u vddc_index: %d\n",
	       ps->sclk_low, ps->min_voltage);
	FUNC0("\t\tpower level 1    sclk: %u vddc_index: %d\n",
	       ps->sclk_high, ps->max_voltage);
	FUNC3(rdev, rps);
}