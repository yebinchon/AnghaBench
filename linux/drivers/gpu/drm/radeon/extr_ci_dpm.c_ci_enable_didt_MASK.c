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
struct ci_power_info {scalar_t__ caps_tcp_ramping; scalar_t__ caps_td_ramping; scalar_t__ caps_db_ramping; scalar_t__ caps_sq_ramping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int) ; 
 struct ci_power_info* FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  didt_config_ci ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev, bool enable)
{
	struct ci_power_info *pi = FUNC1(rdev);
	int ret;

	if (pi->caps_sq_ramping || pi->caps_db_ramping ||
	    pi->caps_td_ramping || pi->caps_tcp_ramping) {
		FUNC3(rdev);

		if (enable) {
			ret = FUNC2(rdev, didt_config_ci);
			if (ret) {
				FUNC4(rdev);
				return ret;
			}
		}

		FUNC0(rdev, enable);

		FUNC4(rdev);
	}

	return 0;
}