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
struct pp_hwmgr {int /*<<< orphan*/  smu_lock; int /*<<< orphan*/  pm_en; } ;
struct amd_pp_simple_clock_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pp_hwmgr*,struct amd_pp_simple_clock_info*) ; 

__attribute__((used)) static int FUNC3(void *handle,
		struct amd_pp_simple_clock_info *output)
{
	struct pp_hwmgr *hwmgr = handle;
	int ret = 0;

	if (!hwmgr || !hwmgr->pm_en ||!output)
		return -EINVAL;

	FUNC0(&hwmgr->smu_lock);
	ret = FUNC2(hwmgr, output);
	FUNC1(&hwmgr->smu_lock);
	return ret;
}