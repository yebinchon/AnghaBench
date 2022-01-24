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
struct sumo_power_info {int /*<<< orphan*/  fw_version; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 struct sumo_power_info* FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 

void FUNC7(struct radeon_device *rdev)
{
	struct sumo_power_info *pi = FUNC2(rdev);

	FUNC4(rdev);
	pi->fw_version = FUNC3(rdev);
	FUNC0("Found smc ucode version: 0x%08x\n", pi->fw_version);
	FUNC5(rdev);
	FUNC1(rdev);
	FUNC6(rdev, true);
}