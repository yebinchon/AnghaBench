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
struct evergreen_power_info {int pcie_performance_request_registered; scalar_t__ pcie_performance_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 struct evergreen_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 

void FUNC8(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC1(rdev);

	FUNC2(rdev);
	FUNC7(rdev);
	FUNC4(rdev);
	FUNC5(rdev);

	if (eg_pi->pcie_performance_request)
		eg_pi->pcie_performance_request_registered = false;

	if (eg_pi->pcie_performance_request)
		FUNC0(rdev);

	FUNC6(rdev);

	FUNC3(rdev);
}