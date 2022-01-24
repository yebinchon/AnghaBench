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
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ supported; } ;
struct evergreen_power_info {TYPE_1__ ulv; } ;

/* Variables and functions */
 int FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC2 (struct radeon_device*) ; 
 struct evergreen_power_info* FUNC3 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev,
							struct radeon_ps *radeon_new_state)
{
	int ret = 0;
	struct evergreen_power_info *eg_pi = FUNC3(rdev);

	if (eg_pi->ulv.supported) {
		if (FUNC1(rdev, radeon_new_state)) {
			// Set ARB[0] to reflect the DRAM timing needed for ULV.
			ret = FUNC2(rdev);
			if (ret == 0)
				ret = FUNC0(rdev);
		}
	}

	return ret;
}