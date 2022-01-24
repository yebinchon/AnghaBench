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
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PP_TASK_COMPLETE_INIT ; 
 int FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC3(void *handle)
{
	struct pp_hwmgr *hwmgr = handle;
	int ret;

	ret = FUNC1(hwmgr);
	if (ret)
		return ret;

	ret = FUNC2(hwmgr);
	if (ret)
		return ret;

	return FUNC0(hwmgr, AMD_PP_TASK_COMPLETE_INIT, NULL);
}