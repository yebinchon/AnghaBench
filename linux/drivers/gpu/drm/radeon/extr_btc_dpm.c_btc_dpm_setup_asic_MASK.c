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
struct radeon_device {int dummy; } ;
struct evergreen_power_info {scalar_t__ pcie_performance_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 struct evergreen_power_info* FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 

void FUNC10(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC3(rdev);
	int r;

	r = FUNC4(rdev);
	if (r)
		FUNC0("Failed to load MC firmware!\n");
	FUNC7(rdev);
	FUNC5(rdev);
	FUNC1(rdev);
	FUNC9(rdev);

	if (eg_pi->pcie_performance_request)
		FUNC2(rdev);

	FUNC8(rdev);
	FUNC6(rdev);
}