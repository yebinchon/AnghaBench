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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int) ; 

void FUNC6(struct radeon_device *rdev)
{
	FUNC2(rdev, false);
	FUNC1(rdev, false);

	FUNC0(rdev, true);

	FUNC5(rdev, 0);
	FUNC5(rdev, 1);

	FUNC3(rdev, true);
	FUNC4(rdev);
	FUNC3(rdev, false);
	FUNC4(rdev);

	FUNC3(rdev, true);
	FUNC4(rdev);
	FUNC3(rdev, false);
	FUNC4(rdev);

	FUNC2(rdev, true);
	FUNC1(rdev, true);
}