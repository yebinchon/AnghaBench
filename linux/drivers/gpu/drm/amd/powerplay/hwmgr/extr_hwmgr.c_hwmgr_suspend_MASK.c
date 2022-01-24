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
struct pp_hwmgr {int /*<<< orphan*/  pm_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pp_hwmgr*) ; 

int FUNC4(struct pp_hwmgr *hwmgr)
{
	int ret = 0;

	if (!hwmgr || !hwmgr->pm_en)
		return 0;

	FUNC0(hwmgr);
	ret = FUNC3(hwmgr);
	if (ret)
		return ret;
	ret = FUNC2(hwmgr, true, NULL);
	if (ret)
		return ret;
	ret = FUNC1(hwmgr);

	return ret;
}