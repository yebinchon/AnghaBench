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
struct TYPE_2__ {int /*<<< orphan*/  platformCaps; } ;
struct pp_hwmgr {int /*<<< orphan*/  smu_lock; TYPE_1__ platform_descriptor; int /*<<< orphan*/  pm_en; } ;
struct amd_pp_simple_clock_info {int /*<<< orphan*/  level; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PHM_PlatformCaps_DynamicPatchPowerState ; 
 int /*<<< orphan*/  PP_DAL_POWERLEVEL_7 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ; 

__attribute__((used)) static int FUNC4(void *handle,
		struct amd_pp_simple_clock_info *clocks)
{
	struct pp_hwmgr *hwmgr = handle;
	int ret = 0;

	if (!hwmgr || !hwmgr->pm_en ||!clocks)
		return -EINVAL;

	clocks->level = PP_DAL_POWERLEVEL_7;

	FUNC0(&hwmgr->smu_lock);

	if (FUNC2(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_DynamicPatchPowerState))
		ret = FUNC3(hwmgr, clocks);

	FUNC1(&hwmgr->smu_lock);
	return ret;
}