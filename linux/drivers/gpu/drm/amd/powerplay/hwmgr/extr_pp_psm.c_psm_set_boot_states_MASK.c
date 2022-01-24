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
struct pp_hwmgr {int /*<<< orphan*/  ps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PP_StateClassificationFlag_Boot ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC1 (struct pp_hwmgr*,unsigned long) ; 

int FUNC2(struct pp_hwmgr *hwmgr)
{
	unsigned long state_id;
	int ret = -EINVAL;

	if (!hwmgr->ps)
		return 0;

	if (!FUNC0(hwmgr, PP_StateClassificationFlag_Boot,
					&state_id))
		ret = FUNC1(hwmgr, state_id);

	return ret;
}