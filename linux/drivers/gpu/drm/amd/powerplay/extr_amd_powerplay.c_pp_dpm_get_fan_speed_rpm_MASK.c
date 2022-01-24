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
typedef  int /*<<< orphan*/  uint32_t ;
struct pp_hwmgr {int /*<<< orphan*/  smu_lock; TYPE_1__* hwmgr_func; int /*<<< orphan*/  pm_en; } ;
struct TYPE_2__ {int (* get_fan_speed_rpm ) (struct pp_hwmgr*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void *handle, uint32_t *rpm)
{
	struct pp_hwmgr *hwmgr = handle;
	int ret = 0;

	if (!hwmgr || !hwmgr->pm_en)
		return -EINVAL;

	if (hwmgr->hwmgr_func->get_fan_speed_rpm == NULL)
		return -EINVAL;

	FUNC0(&hwmgr->smu_lock);
	ret = hwmgr->hwmgr_func->get_fan_speed_rpm(hwmgr, rpm);
	FUNC1(&hwmgr->smu_lock);
	return ret;
}