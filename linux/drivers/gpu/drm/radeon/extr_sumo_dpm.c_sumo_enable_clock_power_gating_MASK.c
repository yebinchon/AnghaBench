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
struct sumo_power_info {scalar_t__ enable_gfx_power_gating; scalar_t__ enable_gfx_clock_gating; scalar_t__ enable_mg_clock_gating; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct sumo_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC0(rdev);

	if (pi->enable_gfx_clock_gating)
		FUNC2(rdev);
	if (pi->enable_gfx_power_gating)
		FUNC4(rdev);
	if (pi->enable_mg_clock_gating)
		FUNC5(rdev, true);
	if (pi->enable_gfx_clock_gating)
		FUNC1(rdev, true);
	if (pi->enable_gfx_power_gating)
		FUNC3(rdev, true);

	return 0;
}