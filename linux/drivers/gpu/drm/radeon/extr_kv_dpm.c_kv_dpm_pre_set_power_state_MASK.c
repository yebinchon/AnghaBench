#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct kv_power_info {int /*<<< orphan*/  current_rps; int /*<<< orphan*/  requested_rps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kv_power_info* FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ps*) ; 

int FUNC3(struct radeon_device *rdev)
{
	struct kv_power_info *pi = FUNC1(rdev);
	struct radeon_ps requested_ps = *rdev->pm.dpm.requested_ps;
	struct radeon_ps *new_ps = &requested_ps;

	FUNC2(rdev, new_ps);

	FUNC0(rdev,
				    &pi->requested_rps,
				    &pi->current_rps);

	return 0;
}