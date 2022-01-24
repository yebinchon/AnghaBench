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
struct PP_TemperatureRange {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*,struct PP_TemperatureRange*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 

int FUNC3(struct pp_hwmgr *hwmgr,
				struct PP_TemperatureRange *range)
{
	int ret = 0;

	if (range == NULL)
		return -EINVAL;

	ret = FUNC1(hwmgr, range);
	if (ret)
		return ret;

	ret = FUNC0(hwmgr);
	if (ret)
		return ret;

	ret = FUNC2(hwmgr);

	return ret;
}