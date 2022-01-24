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
struct radeon_device {int pg_flags; } ;

/* Variables and functions */
 int RADEON_PG_SUPPORT_GFX_PG ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	if (rdev->pg_flags) {
		FUNC3(rdev, true);
		FUNC2(rdev, true);
		if (rdev->pg_flags & RADEON_PG_SUPPORT_GFX_PG) {
			FUNC5(rdev);
			FUNC0(rdev, true);
			FUNC1(rdev, true);
		}
		FUNC4(rdev);
		FUNC6(rdev, true);
	}
}