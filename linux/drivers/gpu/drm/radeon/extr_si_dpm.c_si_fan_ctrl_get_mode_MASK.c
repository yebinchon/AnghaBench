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
typedef  int u32 ;
struct si_power_info {scalar_t__ fan_is_controlled_by_smc; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_FDO_CTRL2 ; 
 int FDO_PWM_MODE_MASK ; 
 int FDO_PWM_MODE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct si_power_info* FUNC1 (struct radeon_device*) ; 

u32 FUNC2(struct radeon_device *rdev)
{
	struct si_power_info *si_pi = FUNC1(rdev);
	u32 tmp;

	if (si_pi->fan_is_controlled_by_smc)
		return 0;

	tmp = FUNC0(CG_FDO_CTRL2) & FDO_PWM_MODE_MASK;
	return (tmp >> FDO_PWM_MODE_SHIFT);
}