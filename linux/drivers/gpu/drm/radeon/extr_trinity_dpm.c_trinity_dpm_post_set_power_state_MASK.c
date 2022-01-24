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
struct radeon_ps {int dummy; } ;
struct trinity_power_info {struct radeon_ps requested_rps; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 struct trinity_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ps*) ; 

void FUNC2(struct radeon_device *rdev)
{
	struct trinity_power_info *pi = FUNC0(rdev);
	struct radeon_ps *new_ps = &pi->requested_rps;

	FUNC1(rdev, new_ps);
}