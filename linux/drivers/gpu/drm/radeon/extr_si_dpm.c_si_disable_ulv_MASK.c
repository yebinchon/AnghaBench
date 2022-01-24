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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_DisableULV ; 
 scalar_t__ PPSMC_Result_OK ; 
 struct si_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev)
{
	struct si_power_info *si_pi = FUNC0(rdev);
	struct si_ulv_param *ulv = &si_pi->ulv;

	if (ulv->supported)
		return (FUNC1(rdev, PPSMC_MSG_DisableULV) == PPSMC_Result_OK) ?
			0 : -EINVAL;

	return 0;
}