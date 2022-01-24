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
struct radeon_device {int dummy; } ;
struct kv_power_info {scalar_t__ bapm_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct kv_power_info* FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,int) ; 

void FUNC3(struct radeon_device *rdev, bool enable)
{
	struct kv_power_info *pi = FUNC1(rdev);
	int ret;

	if (pi->bapm_enable) {
		ret = FUNC2(rdev, enable);
		if (ret)
			FUNC0("kv_smc_bapm_enable failed\n");
	}
}