#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int mode_config_initialized; int /*<<< orphan*/  bios_hardcoded_edid; } ;
struct radeon_device {TYPE_1__ mode_info; int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 

void FUNC8(struct radeon_device *rdev)
{
	if (rdev->mode_info.mode_config_initialized) {
		FUNC1(rdev->ddev);
		FUNC6(rdev);
		FUNC0(rdev->ddev);
		FUNC5(rdev);
		FUNC4(rdev);
		FUNC2(rdev->ddev);
		rdev->mode_info.mode_config_initialized = false;
	}

	FUNC3(rdev->mode_info.bios_hardcoded_edid);

	/* free i2c buses */
	FUNC7(rdev);
}