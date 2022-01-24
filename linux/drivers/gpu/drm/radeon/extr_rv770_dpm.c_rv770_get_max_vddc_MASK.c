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
typedef  scalar_t__ u16 ;
struct rv7xx_power_info {scalar_t__ max_vddc; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct rv7xx_power_info* FUNC1 (struct radeon_device*) ; 

void FUNC2(struct radeon_device *rdev)
{
	struct rv7xx_power_info *pi = FUNC1(rdev);
	u16 vddc;

	if (FUNC0(rdev, 0, 0, &vddc))
		pi->max_vddc = 0;
	else
		pi->max_vddc = vddc;
}