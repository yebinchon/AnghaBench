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
struct trinity_power_info {scalar_t__ enable_mg_clock_gating; scalar_t__ enable_gfx_clock_gating; scalar_t__ enable_gfx_dynamic_mgpg; scalar_t__ enable_gfx_power_gating; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct trinity_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC0(rdev);

	if (pi->enable_gfx_power_gating)
		FUNC3(rdev, false);
	if (pi->enable_gfx_dynamic_mgpg)
		FUNC2(rdev, false);
	if (pi->enable_gfx_clock_gating)
		FUNC1(rdev, false);
	if (pi->enable_mg_clock_gating) {
		FUNC5(rdev, false);
		FUNC4(rdev, false);
	}
}