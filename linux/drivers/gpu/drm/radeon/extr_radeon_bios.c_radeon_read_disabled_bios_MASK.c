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
struct radeon_device {int flags; scalar_t__ family; } ;

/* Variables and functions */
 scalar_t__ CHIP_BARTS ; 
 scalar_t__ CHIP_R600 ; 
 scalar_t__ CHIP_RS600 ; 
 scalar_t__ CHIP_RV770 ; 
 int RADEON_IS_IGP ; 
 int FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static bool FUNC6(struct radeon_device *rdev)
{
	if (rdev->flags & RADEON_IS_IGP)
		return FUNC1(rdev);
	else if (rdev->family >= CHIP_BARTS)
		return FUNC3(rdev);
	else if (rdev->family >= CHIP_RV770)
		return FUNC5(rdev);
	else if (rdev->family >= CHIP_R600)
		return FUNC4(rdev);
	else if (rdev->family >= CHIP_RS600)
		return FUNC0(rdev);
	else
		return FUNC2(rdev);
}