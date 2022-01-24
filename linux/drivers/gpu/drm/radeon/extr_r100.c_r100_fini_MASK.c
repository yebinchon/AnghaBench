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
struct radeon_device {int flags; int /*<<< orphan*/ * bios; } ;

/* Variables and functions */
 int RADEON_IS_PCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 

void FUNC12(struct radeon_device *rdev)
{
	FUNC10(rdev);
	FUNC1(rdev);
	FUNC11(rdev);
	FUNC8(rdev);
	FUNC7(rdev);
	if (rdev->flags & RADEON_IS_PCI)
		FUNC2(rdev);
	FUNC3(rdev);
	FUNC9(rdev);
	FUNC6(rdev);
	FUNC5(rdev);
	FUNC4(rdev);
	FUNC0(rdev->bios);
	rdev->bios = NULL;
}