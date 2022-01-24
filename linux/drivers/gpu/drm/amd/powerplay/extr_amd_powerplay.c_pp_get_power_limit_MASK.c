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
typedef  int uint32_t ;
struct TYPE_2__ {int TDPODLimit; } ;
struct pp_hwmgr {int default_power_limit; int power_limit; int /*<<< orphan*/  smu_lock; TYPE_1__ platform_descriptor; scalar_t__ od_enabled; int /*<<< orphan*/  pm_en; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void *handle, uint32_t *limit, bool default_limit)
{
	struct pp_hwmgr *hwmgr = handle;

	if (!hwmgr || !hwmgr->pm_en ||!limit)
		return -EINVAL;

	FUNC0(&hwmgr->smu_lock);

	if (default_limit) {
		*limit = hwmgr->default_power_limit;
		if (hwmgr->od_enabled) {
			*limit *= (100 + hwmgr->platform_descriptor.TDPODLimit);
			*limit /= 100;
		}
	}
	else
		*limit = hwmgr->power_limit;

	FUNC1(&hwmgr->smu_lock);

	return 0;
}