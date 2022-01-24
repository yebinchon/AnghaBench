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
struct si_ulv_param {scalar_t__ supported; } ;
struct si_power_info {struct si_ulv_param ulv; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_EnableULV ; 
 scalar_t__ PPSMC_Result_OK ; 
 struct si_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,struct radeon_ps*) ; 
 scalar_t__ FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct radeon_device *rdev,
						       struct radeon_ps *radeon_new_state)
{
	const struct si_power_info *si_pi = FUNC0(rdev);
	const struct si_ulv_param *ulv = &si_pi->ulv;

	if (ulv->supported) {
		if (FUNC1(rdev, radeon_new_state))
			return (FUNC2(rdev, PPSMC_MSG_EnableULV) == PPSMC_Result_OK) ?
				0 : -EINVAL;
	}
	return 0;
}