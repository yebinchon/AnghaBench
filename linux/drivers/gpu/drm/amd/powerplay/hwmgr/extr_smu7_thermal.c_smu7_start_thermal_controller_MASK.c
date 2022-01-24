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
struct PP_TemperatureRange {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*) ; 

int FUNC6(struct pp_hwmgr *hwmgr,
				struct PP_TemperatureRange *range)
{
	int ret = 0;

	if (range == NULL)
		return -EINVAL;

	FUNC1(hwmgr);
	ret = FUNC2(hwmgr, range->min, range->max);
	if (ret)
		return -EINVAL;
	FUNC0(hwmgr);
	ret = FUNC4(hwmgr);
	if (ret)
		return -EINVAL;

/* We should restrict performance levels to low before we halt the SMC.
 * On the other hand we are still in boot state when we do this
 * so it would be pointless.
 * If this assumption changes we have to revisit this table.
 */
	FUNC5(hwmgr);
	FUNC3(hwmgr);
	return 0;
}