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
struct trinity_power_info {scalar_t__ enable_bapm; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 struct trinity_power_info* FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 

void FUNC4(struct radeon_device *rdev, bool enable)
{
	struct trinity_power_info *pi = FUNC2(rdev);

	if (pi->enable_bapm) {
		FUNC0(rdev);
		FUNC1(rdev, enable);
		FUNC3(rdev);
	}
}