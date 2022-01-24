#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  boot_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ pm; } ;

/* Variables and functions */
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*,int /*<<< orphan*/ ) ; 

void FUNC14(struct radeon_device *rdev)
{
	FUNC11(rdev, false);

	if (rdev->family == CHIP_MULLINS)
		FUNC6(rdev, false);

	/* powerup blocks */
	FUNC1(rdev, false);
	FUNC2(rdev, false);
	FUNC4(rdev, false);
	FUNC3(rdev, false);

	FUNC7(rdev, false);
	FUNC5(rdev, false);
	FUNC0(rdev);
	FUNC12(rdev);
	FUNC9(rdev, false);
	FUNC10(rdev);
	FUNC8(rdev, false);

	FUNC13(rdev, rdev->pm.dpm.boot_ps);
}