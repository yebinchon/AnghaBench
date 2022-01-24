#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct si_power_info {scalar_t__ fan_is_controlled_by_smc; } ;
struct TYPE_2__ {scalar_t__ no_fan; } ;
struct radeon_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_FDO_CTRL0 ; 
 int /*<<< orphan*/  CG_FDO_CTRL1 ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int) ; 
 int FDO_STATIC_DUTY_MASK ; 
 int FMAX_DUTY100_MASK ; 
 int FMAX_DUTY100_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct si_power_info* FUNC4 (struct radeon_device*) ; 

int FUNC5(struct radeon_device *rdev,
				      u32 speed)
{
	struct si_power_info *si_pi = FUNC4(rdev);
	u32 tmp;
	u32 duty, duty100;
	u64 tmp64;

	if (rdev->pm.no_fan)
		return -ENOENT;

	if (si_pi->fan_is_controlled_by_smc)
		return -EINVAL;

	if (speed > 100)
		return -EINVAL;

	duty100 = (FUNC1(CG_FDO_CTRL1) & FMAX_DUTY100_MASK) >> FMAX_DUTY100_SHIFT;

	if (duty100 == 0)
		return -EINVAL;

	tmp64 = (u64)speed * duty100;
	FUNC3(tmp64, 100);
	duty = (u32)tmp64;

	tmp = FUNC1(CG_FDO_CTRL0) & ~FDO_STATIC_DUTY_MASK;
	tmp |= FUNC0(duty);
	FUNC2(CG_FDO_CTRL0, tmp);

	return 0;
}