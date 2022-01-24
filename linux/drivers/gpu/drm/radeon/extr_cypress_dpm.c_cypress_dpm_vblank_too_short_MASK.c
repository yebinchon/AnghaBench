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
typedef  scalar_t__ u32 ;
struct rv7xx_power_info {scalar_t__ mem_gddr5; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 

bool FUNC2(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);
	u32 vblank_time = FUNC0(rdev);
	/* we never hit the non-gddr5 limit so disable it */
	u32 switch_limit = pi->mem_gddr5 ? 450 : 0;

	if (vblank_time < switch_limit)
		return true;
	else
		return false;

}