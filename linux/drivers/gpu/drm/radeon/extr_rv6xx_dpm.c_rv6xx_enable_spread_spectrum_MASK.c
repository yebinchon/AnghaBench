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
 int /*<<< orphan*/  R600_POWER_LEVEL_HIGH ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_LOW ; 
 int /*<<< orphan*/  R600_POWER_LEVEL_MEDIUM ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev,
					 bool enable)
{
	if (enable)
		FUNC0(rdev, true);
	else {
		FUNC1(rdev, R600_POWER_LEVEL_LOW, false);
		FUNC1(rdev, R600_POWER_LEVEL_MEDIUM, false);
		FUNC1(rdev, R600_POWER_LEVEL_HIGH, false);
		FUNC0(rdev, false);
		FUNC2(rdev, false);
	}
}