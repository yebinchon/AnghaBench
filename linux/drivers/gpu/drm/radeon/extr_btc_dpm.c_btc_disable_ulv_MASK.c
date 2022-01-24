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
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supported; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_DisableULV ; 
 scalar_t__ PPSMC_Result_OK ; 
 struct evergreen_power_info* FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radeon_device *rdev)
{
	struct evergreen_power_info *eg_pi = FUNC0(rdev);

	if (eg_pi->ulv.supported) {
		if (FUNC1(rdev, PPSMC_MSG_DisableULV) != PPSMC_Result_OK)
			return -EINVAL;
	}
	return 0;
}